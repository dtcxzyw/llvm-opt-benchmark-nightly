Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/iseq?download=true
inline.NumInlined: 615
inline.NumDeleted: 145
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 14
begin_hunk_0_@rb_iseq_insns_info_encode_positions:bb.a
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !17
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
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !17
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
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !17
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
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !17
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
  store i64 %i.dc, ptr %i.v, align 8, !tbaa !19
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.preheader.i, label %.preheader60.i, !llvm.loop !309

bb.v:                                             ; preds = %bb.ah, %.lr.ph.i
  %indvars.iv83.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next84.i, %bb.ah ] ; 3 uses
  %.372.i = phi i32 [ %.053.lcssa.i, %.lr.ph.i ], [ %.6.i.1, %bb.ah ] ; 2 uses
  %i.dd = getelementptr [80 x i8], ptr %i.z, i64 %indvars.iv83.i ; 3 uses
  store i32 %.372.i, ptr %i.dd, align 8, !tbaa !128
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
  %i.dm = load i64, ptr %i.dh, align 8, !tbaa !129
  %i.dn = or i64 %i.dm, %i.dl
  store i64 %i.dn, ptr %i.dh, align 8, !tbaa !129
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.do = shl nuw nsw i64 %indvars.iv79.i, 6
  %i.dp = add nuw nsw i64 %i.df, %i.do            ; 2 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.af, %bb.y
  %indvars.iv75.i = phi i64 [ 0, %bb.y ], [ %indvars.iv.next76.i.1, %bb.af ] ; 5 uses
  %.067.i = phi i64 [ 0, %bb.y ], [ %.1.i.1, %bb.af ] ; 3 uses
  %.566.i = phi i32 [ %.469.i, %bb.y ], [ %.6.i.1, %bb.af ] ; 5 uses
  %i.dq = icmp slt i32 %.566.i, %i.d
  br i1 %i.dq, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.dr = sext i32 %.566.i to i64
  %i.ds = getelementptr [4 x i8], ptr %i.h, i64 %i.dr
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !17
  %i.du = add nuw nsw i64 %i.dp, %indvars.iv75.i
  %i.dv = zext i32 %i.dt to i64
  %i.dw = icmp eq i64 %i.du, %i.dv
  br i1 %i.dw, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.dx = shl nuw i64 1, %indvars.iv75.i
  %i.dy = or i64 %.067.i, %i.dx
  %i.dz = add nsw i32 %.566.i, 1
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  %.6.i = phi i32 [ %i.dz, %bb.ab ], [ %.566.i, %bb.aa ], [ %.566.i, %bb.z ] ; 5 uses
  %.1.i = phi i64 [ %i.dy, %bb.ab ], [ %.067.i, %bb.aa ], [ %.067.i, %bb.z ] ; 3 uses
  %i.ea = icmp slt i32 %.6.i, %i.d
  br i1 %i.ea, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %indvars.iv.next76.i = or disjoint i64 %indvars.iv75.i, 1
  %i.eb = sext i32 %.6.i to i64
  %i.ec = getelementptr [4 x i8], ptr %i.h, i64 %i.eb
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !17
  %i.ee = add nuw nsw i64 %i.dp, %indvars.iv.next76.i
  %i.ef = zext i32 %i.ed to i64
  %i.eg = icmp eq i64 %i.ee, %i.ef
  br i1 %i.eg, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.eh = shl nuw i64 2, %indvars.iv75.i
  %i.ei = or i64 %.1.i, %i.eh
  %i.ej = add nsw i32 %.6.i, 1
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %bb.ac
  %.6.i.1 = phi i32 [ %i.ej, %bb.ae ], [ %.6.i, %bb.ad ], [ %.6.i, %bb.ac ] ; 3 uses
  %.1.i.1 = phi i64 [ %i.ei, %bb.ae ], [ %.1.i, %bb.ad ], [ %.1.i, %bb.ac ] ; 3 uses
  %indvars.iv.next76.i.1 = add nuw nsw i64 %indvars.iv75.i, 2 ; 2 uses
  %exitcond78.not.i.1 = icmp eq i64 %indvars.iv.next76.i.1, 64
  br i1 %exitcond78.not.i.1, label %bb.ag, label %bb.z, !llvm.loop !310

bb.ag:                                            ; preds = %bb.af
  %i.ek = getelementptr [8 x i8], ptr %i.dg, i64 %indvars.iv79.i
  store i64 %.1.i.1, ptr %i.ek, align 8, !tbaa !19
  %i.el = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %.1.i.1)
  %i.em = trunc nuw nsw i64 %i.el to i32
  %i.en = add i32 %.05270.i, %i.em
  %indvars.iv.next80.i = add nuw nsw i64 %indvars.iv79.i, 1 ; 2 uses
  %exitcond82.not.i = icmp eq i64 %indvars.iv.next80.i, 8
  br i1 %exitcond82.not.i, label %bb.ah, label %bb.w, !llvm.loop !311

bb.ah:                                            ; preds = %bb.ag
  %indvars.iv.next84.i = add nuw nsw i64 %indvars.iv83.i, 1 ; 2 uses
  %exitcond87.not.i = icmp eq i64 %indvars.iv.next84.i, %wide.trip.count86.i
  br i1 %exitcond87.not.i, label %succ_index_table_create.exit, label %bb.v, !llvm.loop !312

succ_index_table_create.exit:                     ; preds = %bb.ah, %.preheader.i
  store ptr %i.t, ptr %i.i, align 8, !tbaa !84
  %i.eo = load ptr, ptr %i.g, align 8, !tbaa !83
  tail call void @ruby_xfree(ptr noundef %i.eo) #20
  store ptr null, ptr %i.g, align 8, !tbaa !83
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define hidden noalias nonnull ptr @rb_iseq_insns_info_decode_positions(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 128
  %i.b = load i32, ptr %i.a, align 8, !tbaa !123
  %i.c = getelementptr i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !88   ; 4 uses
  %i.e = getelementptr i8, ptr %0, i64 136
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !84   ; 2 uses
  %i.g = icmp sgt i32 %i.d, 53
  %i.h = add nsw i32 %i.d, 8
  %i.i = sdiv i32 %i.h, 9
  %i.j = select i1 %i.g, i32 6, i32 %i.i          ; 2 uses
  %i.k = sext i32 %i.b to i64
  %i.l = tail call noalias nonnull ptr @ruby_xmalloc2(i64 noundef %i.k, i64 noundef 4) #21 ; 3 uses
  %i.m = icmp sgt i32 %i.j, 0
  br i1 %i.m, label %.preheader45.preheader.i, label %.preheader44.i

.preheader45.preheader.i:                         ; preds = %bb.a
  %wide.trip.count.i = zext nneg i32 %i.j to i64
  br label %.preheader45.i

.preheader45.i:                                   ; preds = %bb.s, %.preheader45.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.preheader45.preheader.i ], [ %indvars.iv.next.i, %bb.s ] ; 3 uses
  %.051.i = phi i32 [ -1, %.preheader45.preheader.i ], [ %i.bl, %bb.s ]
  %.04049.i = phi ptr [ %i.l, %.preheader45.preheader.i ], [ %.2.8.i, %bb.s ] ; 3 uses
  %i.n = getelementptr [8 x i8], ptr %i.f, i64 %indvars.iv.i
  %i.o = load i64, ptr %i.n, align 8, !tbaa !19   ; 6 uses
  %i.p = mul nuw nsw i64 %indvars.iv.i, 9         ; 9 uses
  %i.q = trunc i64 %i.o to i32                    ; 4 uses
  %i.r = and i32 %i.q, 127                        ; 2 uses
  %.not42.i = icmp eq i32 %.051.i, %i.r
  br i1 %.not42.i, label %bb.c, label %bb.b

.preheader44.i:                                   ; preds = %bb.s, %bb.a
  %.040.lcssa.i = phi ptr [ %i.l, %bb.a ], [ %.2.8.i, %bb.s ]
  %i.s = add i32 %i.d, -55
  %i.t = icmp ult i32 %i.s, 2147483136
  br i1 %i.t, label %.preheader43.preheader.i, label %succ_index_table_invert.exit

.preheader43.preheader.i:                         ; preds = %.preheader44.i
  %1 = add nuw nsw i32 %i.d, 457
  %2 = lshr i32 %1, 9
  %wide.trip.count71.i = zext nneg i32 %2 to i64
  br label %.preheader43.i

bb.b:                                             ; preds = %.preheader45.i
  %i.u = getelementptr i8, ptr %.04049.i, i64 4
  %i.v = trunc nuw i64 %i.p to i32
  store i32 %i.v, ptr %.04049.i, align 4, !tbaa !17
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.preheader45.i
  %.2.i = phi ptr [ %i.u, %bb.b ], [ %.04049.i, %.preheader45.i ] ; 3 uses
  %i.w = lshr i32 %i.q, 7
  %i.x = and i32 %i.w, 127                        ; 2 uses
  %.not42.1.i = icmp eq i32 %i.r, %i.x
  br i1 %.not42.1.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr i8, ptr %.2.i, i64 4
  %i.z = trunc i64 %i.p to i32
  %i.aa = add i32 %i.z, 1
  store i32 %i.aa, ptr %.2.i, align 4, !tbaa !17
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.2.1.i = phi ptr [ %i.y, %bb.d ], [ %.2.i, %bb.c ] ; 3 uses
  %i.ab = lshr i32 %i.q, 14
  %i.ac = and i32 %i.ab, 127                      ; 2 uses
  %.not42.2.i = icmp eq i32 %i.x, %i.ac
  br i1 %.not42.2.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr i8, ptr %.2.1.i, i64 4
  %i.ae = trunc i64 %i.p to i32
  %i.af = add i32 %i.ae, 2
  store i32 %i.af, ptr %.2.1.i, align 4, !tbaa !17
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.2.2.i = phi ptr [ %i.ad, %bb.f ], [ %.2.1.i, %bb.e ] ; 3 uses
  %i.ag = lshr i32 %i.q, 21
  %i.ah = and i32 %i.ag, 127                      ; 2 uses
  %.not42.3.i = icmp eq i32 %i.ac, %i.ah
  br i1 %.not42.3.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = getelementptr i8, ptr %.2.2.i, i64 4
  %i.aj = trunc i64 %i.p to i32
  %i.ak = add i32 %i.aj, 3
  store i32 %i.ak, ptr %.2.2.i, align 4, !tbaa !17
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.2.3.i = phi ptr [ %i.ai, %bb.h ], [ %.2.2.i, %bb.g ] ; 3 uses
  %i.al = lshr i64 %i.o, 28
  %i.am = trunc i64 %i.al to i32
  %i.an = and i32 %i.am, 127                      ; 2 uses
  %.not42.4.i = icmp eq i32 %i.ah, %i.an
  br i1 %.not42.4.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ao = getelementptr i8, ptr %.2.3.i, i64 4
  %i.ap = trunc i64 %i.p to i32
  %i.aq = add i32 %i.ap, 4
  store i32 %i.aq, ptr %.2.3.i, align 4, !tbaa !17
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.2.4.i = phi ptr [ %i.ao, %bb.j ], [ %.2.3.i, %bb.i ] ; 3 uses
  %i.ar = lshr i64 %i.o, 35
  %i.as = trunc nuw nsw i64 %i.ar to i32
  %i.at = and i32 %i.as, 127                      ; 2 uses
  %.not42.5.i = icmp eq i32 %i.an, %i.at
  br i1 %.not42.5.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.au = getelementptr i8, ptr %.2.4.i, i64 4
  %i.av = trunc i64 %i.p to i32
  %i.aw = add i32 %i.av, 5
  store i32 %i.aw, ptr %.2.4.i, align 4, !tbaa !17
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.2.5.i = phi ptr [ %i.au, %bb.l ], [ %.2.4.i, %bb.k ] ; 3 uses
  %i.ax = lshr i64 %i.o, 42
  %i.ay = trunc nuw nsw i64 %i.ax to i32
  %i.az = and i32 %i.ay, 127                      ; 2 uses
  %.not42.6.i = icmp eq i32 %i.at, %i.az
  br i1 %.not42.6.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ba = getelementptr i8, ptr %.2.5.i, i64 4
  %i.bb = trunc i64 %i.p to i32
  %i.bc = add i32 %i.bb, 6
  store i32 %i.bc, ptr %.2.5.i, align 4, !tbaa !17
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.2.6.i = phi ptr [ %i.ba, %bb.n ], [ %.2.5.i, %bb.m ] ; 3 uses
  %i.bd = lshr i64 %i.o, 49
  %i.be = trunc nuw nsw i64 %i.bd to i32
  %i.bf = and i32 %i.be, 127                      ; 2 uses
  %.not42.7.i = icmp eq i32 %i.az, %i.bf
  br i1 %.not42.7.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bg = getelementptr i8, ptr %.2.6.i, i64 4
  %i.bh = trunc i64 %i.p to i32
  %i.bi = add i32 %i.bh, 7
  store i32 %i.bi, ptr %.2.6.i, align 4, !tbaa !17
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.2.7.i = phi ptr [ %i.bg, %bb.p ], [ %.2.6.i, %bb.o ] ; 3 uses
  %i.bj = lshr i64 %i.o, 56
  %i.bk = trunc nuw nsw i64 %i.bj to i32
  %i.bl = and i32 %i.bk, 127                      ; 2 uses
  %.not42.8.i = icmp eq i32 %i.bf, %i.bl
  br i1 %.not42.8.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bm = getelementptr i8, ptr %.2.7.i, i64 4
  %i.bn = trunc i64 %i.p to i32
  %i.bo = add i32 %i.bn, 8
  store i32 %i.bo, ptr %.2.7.i, align 4, !tbaa !17
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.2.8.i = phi ptr [ %i.bm, %bb.r ], [ %.2.7.i, %bb.q ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.preheader44.i, label %.preheader45.i, !llvm.loop !313

.preheader43.i:                                   ; preds = %bb.bh, %.preheader43.preheader.i
  %indvars.iv68.i = phi i64 [ 0, %.preheader43.preheader.i ], [ %indvars.iv.next69.i, %bb.bh ] ; 3 uses
  %.356.i = phi ptr [ %.040.lcssa.i, %.preheader43.preheader.i ], [ %.6.7.i.1, %bb.bh ]
  %i.bp = getelementptr [80 x i8], ptr %i.f, i64 %indvars.iv68.i ; 8 uses
  %i.bq = getelementptr i8, ptr %i.bp, i64 64
  %i.br = shl nuw nsw i64 %indvars.iv68.i, 9      ; 8 uses
  %i.bs = or disjoint i64 %i.br, 54               ; 2 uses
  %i.bt = load i64, ptr %i.bq, align 8, !tbaa !19 ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.x, %.preheader43.i
  %indvars.iv60.i = phi i64 [ 0, %.preheader43.i ], [ %indvars.iv.next61.i.1, %bb.x ] ; 5 uses
  %.552.i = phi ptr [ %.356.i, %.preheader43.i ], [ %.6.i.1, %bb.x ] ; 3 uses
  %i.bu = shl nuw i64 1, %indvars.iv60.i
  %i.bv = and i64 %i.bu, %i.bt
  %.not.i = icmp eq i64 %i.bv, 0
  br i1 %.not.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bw = add nuw nsw i64 %i.bs, %indvars.iv60.i
  %i.bx = getelementptr i8, ptr %.552.i, i64 4
  %i.by = trunc nuw nsw i64 %i.bw to i32
  store i32 %i.by, ptr %.552.i, align 4, !tbaa !17
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.6.i = phi ptr [ %i.bx, %bb.u ], [ %.552.i, %bb.t ] ; 3 uses
  %i.bz = shl nuw i64 2, %indvars.iv60.i
  %i.ca = and i64 %i.bz, %i.bt
  %.not.i.1 = icmp eq i64 %i.ca, 0
  br i1 %.not.i.1, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %indvars.iv.next61.i = or disjoint i64 %indvars.iv60.i, 1
  %i.cb = add nuw nsw i64 %i.bs, %indvars.iv.next61.i
  %i.cc = getelementptr i8, ptr %.6.i, i64 4
  %i.cd = trunc nuw nsw i64 %i.cb to i32
  store i32 %i.cd, ptr %.6.i, align 4, !tbaa !17
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.6.i.1 = phi ptr [ %i.cc, %bb.w ], [ %.6.i, %bb.v ] ; 2 uses
  %indvars.iv.next61.i.1 = add nuw nsw i64 %indvars.iv60.i, 2 ; 2 uses
  %exitcond63.not.i.1 = icmp eq i64 %indvars.iv.next61.i.1, 64
  br i1 %exitcond63.not.i.1, label %.preheader.1.i, label %bb.t, !llvm.loop !314

.preheader.1.i:                                   ; preds = %bb.x
  %i.ce = getelementptr i8, ptr %i.bp, i64 72
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !19 ; 2 uses
  %i.cg = or disjoint i64 %i.br, 118              ; 2 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.ac, %.preheader.1.i
  %indvars.iv60.1.i = phi i64 [ 0, %.preheader.1.i ], [ %indvars.iv.next61.1.i.1, %bb.ac ] ; 5 uses
  %.552.1.i = phi ptr [ %.6.i.1, %.preheader.1.i ], [ %.6.1.i.1, %bb.ac ] ; 3 uses
  %i.ch = shl nuw i64 1, %indvars.iv60.1.i
  %i.ci = and i64 %i.ch, %i.cf
  %.not.1.i = icmp eq i64 %i.ci, 0
  br i1 %.not.1.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cj = add nuw nsw i64 %i.cg, %indvars.iv60.1.i
  %i.ck = getelementptr i8, ptr %.552.1.i, i64 4
  %i.cl = trunc nuw nsw i64 %i.cj to i32
  store i32 %i.cl, ptr %.552.1.i, align 4, !tbaa !17
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.6.1.i = phi ptr [ %i.ck, %bb.z ], [ %.552.1.i, %bb.y ] ; 3 uses
end_hunk_0
begin_hunk_1_@iseqw_trace_points:bb.a

rbimpl_intern_const.exit67.i:                     ; preds = %.lr.ph.i65.i, %bb.t
  %.lcssa.i64.i = phi i64 [ %.pr.i62.i, %bb.t ], [ %i.cl, %.lr.ph.i65.i ]
  %i.cm = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i64.i) #20
  %i.cn = tail call i64 (i64, ...) @rb_ary_new_from_args(i64 noundef 2, i64 noundef %i.ck, i64 noundef %i.cm) #20
  %i.co = tail call i64 @rb_ary_push(i64 noundef %i.ab, i64 noundef %i.cn) #20 ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %rbimpl_intern_const.exit67.i, %bb.s
  %i.cp = and i32 %i.ai, 512
  %.not36.i = icmp eq i32 %i.cp, 0
  br i1 %.not36.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cq = sext i32 %i.aj to i64
  %i.cr = shl nsw i64 %i.cq, 1
  %i.cs = or disjoint i64 %i.cr, 1
  %.pr.i68.i = load i64, ptr @push_event_info.rbimpl_id.295, align 8, !tbaa !19 ; 2 uses
  %.not4.i69.i = icmp eq i64 %.pr.i68.i, 0
  br i1 %.not4.i69.i, label %.lr.ph.i71.i, label %rbimpl_intern_const.exit73.i

.lr.ph.i71.i:                                     ; preds = %bb.v, %.lr.ph.i71.i
  %i.ct = tail call i64 @rb_intern2(ptr noundef nonnull @.str.296, i64 noundef 8) #20 ; 3 uses
  store i64 %i.ct, ptr @push_event_info.rbimpl_id.295, align 8, !tbaa !19
  %.not.i72.i = icmp eq i64 %i.ct, 0
  br i1 %.not.i72.i, label %.lr.ph.i71.i, label %rbimpl_intern_const.exit73.i, !llvm.loop !1

rbimpl_intern_const.exit73.i:                     ; preds = %.lr.ph.i71.i, %bb.v
  %.lcssa.i70.i = phi i64 [ %.pr.i68.i, %bb.v ], [ %i.ct, %.lr.ph.i71.i ]
  %i.cu = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i70.i) #20
  %i.cv = tail call i64 (i64, ...) @rb_ary_new_from_args(i64 noundef 2, i64 noundef %i.cs, i64 noundef %i.cu) #20
  %i.cw = tail call i64 @rb_ary_push(i64 noundef %i.ab, i64 noundef %i.cv) #20 ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %rbimpl_intern_const.exit73.i, %bb.u
  %i.cx = and i32 %i.ai, 16384
  %.not37.i = icmp eq i32 %i.cx, 0
  br i1 %.not37.i, label %push_event_info.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cy = sext i32 %i.aj to i64
  %i.cz = shl nsw i64 %i.cy, 1
  %i.da = or disjoint i64 %i.cz, 1
  %.pr.i74.i = load i64, ptr @push_event_info.rbimpl_id.297, align 8, !tbaa !19 ; 2 uses
  %.not4.i75.i = icmp eq i64 %.pr.i74.i, 0
  br i1 %.not4.i75.i, label %.lr.ph.i77.i, label %rbimpl_intern_const.exit79.i

.lr.ph.i77.i:                                     ; preds = %bb.x, %.lr.ph.i77.i
  %i.db = tail call i64 @rb_intern2(ptr noundef nonnull @.str.128, i64 noundef 6) #20 ; 3 uses
  store i64 %i.db, ptr @push_event_info.rbimpl_id.297, align 8, !tbaa !19
  %.not.i78.i = icmp eq i64 %i.db, 0
  br i1 %.not.i78.i, label %.lr.ph.i77.i, label %rbimpl_intern_const.exit79.i, !llvm.loop !1

rbimpl_intern_const.exit79.i:                     ; preds = %.lr.ph.i77.i, %bb.x
  %.lcssa.i76.i = phi i64 [ %.pr.i74.i, %bb.x ], [ %i.db, %.lr.ph.i77.i ]
  %i.dc = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i76.i) #20
  %i.dd = tail call i64 (i64, ...) @rb_ary_new_from_args(i64 noundef 2, i64 noundef %i.da, i64 noundef %i.dc) #20
  %i.de = tail call i64 @rb_ary_push(i64 noundef %i.ab, i64 noundef %i.dd) #20 ; 0 uses
  br label %push_event_info.exit

push_event_info.exit:                             ; preds = %rbimpl_intern_const.exit79.i, %bb.w, %bb.h
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.df = load i32, ptr %i.ac, align 8, !tbaa !123
  %i.dg = zext i32 %i.df to i64
  %i.dh = icmp samesign ult i64 %indvars.iv.next, %i.dg
  br i1 %i.dh, label %bb.h, label %._crit_edge, !llvm.loop !380

._crit_edge:                                      ; preds = %push_event_info.exit, %iseqw_check.exit
  ret i64 %i.ab
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @iseqw_each_child(i64 noundef returned %0) #0 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %.critedge.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, !prof !220

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !80
  %i.g = and i64 %i.f, 95
  %or.cond.not.i.i = icmp eq i64 %i.g, 76
  br i1 %or.cond.not.i.i, label %bb.b, label %.critedge.i.i, !prof !202

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.h = getelementptr i8, ptr %i.e, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !204  ; 2 uses
  %i.j = and i64 %i.i, -2                         ; 2 uses
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = trunc i64 %i.i to i1
  %i.m = getelementptr i8, ptr %i.e, i64 32       ; 2 uses
  br i1 %i.l, label %RTYPEDDATA_GET_DATA.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !205
  br label %RTYPEDDATA_GET_DATA.exit.i.i

RTYPEDDATA_GET_DATA.exit.i.i:                     ; preds = %bb.c, %bb.b
  %i.o = phi ptr [ %i.n, %bb.c ], [ %i.m, %bb.b ] ; 2 uses
  %i.p = icmp eq i64 %i.j, ptrtoint (ptr @iseqw_data_type to i64)
  br i1 %i.p, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !prof !206

.preheader.i.i:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i.i, %bb.d
  %.015.i.i = phi ptr [ %i.r, %bb.d ], [ %i.k, %RTYPEDDATA_GET_DATA.exit.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %.015.i.i, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i.i
  %i.q = getelementptr i8, ptr %.015.i.i, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !210  ; 2 uses
  %i.s = icmp eq ptr %i.r, @iseqw_data_type
  br i1 %i.s, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !llvm.loop !2

.critedge.i.i:                                    ; preds = %.preheader.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.a
  %i.t = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @iseqw_data_type) #20
  br label %rbimpl_check_typeddata.exit.i

rbimpl_check_typeddata.exit.i:                    ; preds = %bb.d, %.critedge.i.i, %RTYPEDDATA_GET_DATA.exit.i.i
  %.1.i.i = phi ptr [ %i.t, %.critedge.i.i ], [ %i.o, %RTYPEDDATA_GET_DATA.exit.i.i ], [ %i.o, %bb.d ]
  %i.u = load ptr, ptr %.1.i.i, align 8, !tbaa !211 ; 3 uses
  %i.v = getelementptr i8, ptr %i.u, i64 16       ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !27   ; 2 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %rbimpl_check_typeddata.exit.i
  tail call void @rb_ibf_load_iseq_complete(ptr noundef nonnull %i.u) #20
  %.pre.i = load ptr, ptr %i.v, align 8, !tbaa !27
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %rbimpl_check_typeddata.exit.i
  %i.x = phi ptr [ %.pre.i, %bb.e ], [ %i.w, %rbimpl_check_typeddata.exit.i ]
  %i.y = getelementptr i8, ptr %i.x, i64 80
  %i.z = load i64, ptr %i.y, align 8, !tbaa !199
  %.not5.i = icmp eq i64 %i.z, 0
  br i1 %.not5.i, label %bb.g, label %iseqw_check.exit

bb.g:                                             ; preds = %bb.f
  %i.aa = load i64, ptr @rb_eTypeError, align 8, !tbaa !19
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.aa, ptr noundef nonnull @.str.158) #22
  unreachable

iseqw_check.exit:                                 ; preds = %bb.f
  %i.ab = tail call ptr @rb_iseq_original_iseq(ptr noundef nonnull %i.u) #20 ; 2 uses
  %i.ac = load ptr, ptr %i.v, align 8, !tbaa !27  ; 2 uses
  %i.ad = tail call i64 @rb_ident_hash_new() #20
  %i.ae = tail call i64 @rb_obj_hide(i64 noundef %i.ad) #20 ; 4 uses
  %i.af = getelementptr i8, ptr %i.ac, i64 160    ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !86 ; 3 uses
  %.not.i2 = icmp eq ptr %i.ag, null
  br i1 %.not.i2, label %.loopexit.i, label %.preheader.i

.preheader.i:                                     ; preds = %iseqw_check.exit
  %i.ah = load i32, ptr %i.ag, align 1, !tbaa !17
  %.not53.i = icmp eq i32 %i.ah, 0
  br i1 %.not53.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.j
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.j ], [ 0, %.preheader.i ] ; 2 uses
  %i.ai = phi ptr [ %i.as, %bb.j ], [ %i.ag, %.preheader.i ]
  %i.aj = getelementptr [32 x i8], ptr %i.ai, i64 %indvars.iv.i
  %i.ak = getelementptr i8, ptr %i.aj, i64 12
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !120 ; 3 uses
  %.not49.i = icmp eq ptr %i.al, null
  br i1 %.not49.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i
  %i.am = ptrtoint ptr %i.al to i64               ; 2 uses
  %i.an = tail call i64 @rb_hash_aref(i64 noundef %i.ae, i64 noundef %i.am) #20
  %i.ao = icmp eq i64 %i.an, 4
  br i1 %i.ao, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ap = tail call i64 @rb_hash_aset(i64 noundef %i.ae, i64 noundef %i.am, i64 noundef 20) #20 ; 0 uses
  %i.aq = tail call fastcc i64 @iseqw_new(ptr noundef nonnull %i.al)
  %i.ar = tail call i64 @rb_yield(i64 noundef %i.aq) #20 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.as = load ptr, ptr %i.af, align 8, !tbaa !86 ; 2 uses
  %i.at = load i32, ptr %i.as, align 1, !tbaa !17
  %i.au = zext i32 %i.at to i64
  %i.av = icmp samesign ult i64 %indvars.iv.next.i, %i.au
  br i1 %i.av, label %.lr.ph.i, label %.loopexit.i, !llvm.loop !4

.loopexit.i:                                      ; preds = %bb.j, %.preheader.i, %iseqw_check.exit
  %i.aw = getelementptr i8, ptr %i.ac, i64 4      ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !88
  %.not54.i = icmp eq i32 %i.ax, 0
  br i1 %.not54.i, label %iseq_iterate_children.exit, label %.lr.ph52.i

.lr.ph52.i:                                       ; preds = %.loopexit.i, %bb.w
  %.151.i = phi i32 [ %i.cq, %bb.w ], [ 0, %.loopexit.i ] ; 3 uses
  %i.ay = zext i32 %.151.i to i64
  %i.az = getelementptr [8 x i8], ptr %i.ab, i64 %i.ay
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !19 ; 2 uses
  %i.bb = getelementptr [2 x i8], ptr @rb_vm_insn_op_offset, i64 %i.ba
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !223
  %i.bd = zext i16 %i.bc to i64
  %i.be = getelementptr i8, ptr @rb_vm_insn_op_base, i64 %i.bd
  %i.bf = add nuw i32 %.151.i, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.v, %.lr.ph52.i
  %.0.i = phi i32 [ 0, %.lr.ph52.i ], [ %i.co, %bb.v ] ; 3 uses
  %i.bg = sext i32 %.0.i to i64
  %i.bh = getelementptr i8, ptr %i.be, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !89
  switch i8 %i.bi, label %bb.v [
    i8 0, label %bb.w
    i8 83, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k
  %i.bj = add i32 %i.bf, %.0.i
  %i.bk = zext i32 %i.bj to i64
  %i.bl = getelementptr [8 x i8], ptr %i.ab, i64 %i.bk
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !19 ; 8 uses
  %i.bn = inttoptr i64 %i.bm to ptr               ; 3 uses
  %.not48.i = icmp eq i64 %i.bm, 0
  br i1 %.not48.i, label %bb.v, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bo = tail call i64 @rb_hash_aref(i64 noundef %i.ae, i64 noundef %i.bm) #20
  %i.bp = icmp eq i64 %i.bo, 4
  br i1 %i.bp, label %bb.n, label %bb.v

bb.n:                                             ; preds = %bb.m
  %i.bq = tail call i64 @rb_hash_aset(i64 noundef %i.ae, i64 noundef %i.bm, i64 noundef 20) #20 ; 0 uses
  %i.br = getelementptr i8, ptr %i.bn, i64 8      ; 4 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !219 ; 2 uses
  %.not.i3 = icmp eq i64 %i.bs, 0
  br i1 %.not.i3, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bt = tail call ptr @rb_check_typeddata(i64 noundef %i.bs, ptr noundef nonnull @iseqw_data_type) #20
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !211
  %.not19.i = icmp eq ptr %i.bu, %i.bn
  br i1 %.not19.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bv = load i64, ptr @rb_eTypeError, align 8, !tbaa !19
  %i.bw = load i64, ptr %i.br, align 8, !tbaa !219
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.bv, ptr noundef nonnull @.str.156, i64 noundef %i.bw, ptr noundef nonnull %i.bn) #22
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.bx = load i64, ptr %i.br, align 8, !tbaa !219
  br label %iseqw_new.exit

bb.r:                                             ; preds = %bb.n
  %i.by = load i64, ptr @rb_cISeq, align 8, !tbaa !19
  %i.bz = tail call i64 @rb_data_typed_object_zalloc(i64 noundef %i.by, i64 noundef 8, ptr noundef nonnull @iseqw_data_type) #20 ; 10 uses
  %i.ca = inttoptr i64 %i.bz to ptr               ; 2 uses
  %i.cb = getelementptr i8, ptr %i.ca, i64 24
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !204
  %i.cd = trunc i64 %i.cc to i1
  %i.ce = getelementptr i8, ptr %i.ca, i64 32     ; 2 uses
  br i1 %i.cd, label %RTYPEDDATA_GET_DATA.exit.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !205
  br label %RTYPEDDATA_GET_DATA.exit.i

RTYPEDDATA_GET_DATA.exit.i:                       ; preds = %bb.s, %bb.r
  %i.cg = phi ptr [ %i.cf, %bb.s ], [ %i.ce, %bb.r ]
  store i64 %i.bm, ptr %i.cg, align 8, !tbaa !19
  %i.ch = and i64 %i.bm, 7
  %.not24.i = icmp eq i64 %i.ch, 0
  br i1 %.not24.i, label %bb.t, label %rb_obj_write.exit.i

bb.t:                                             ; preds = %RTYPEDDATA_GET_DATA.exit.i
  tail call void @rb_gc_writebarrier(i64 noundef %i.bz, i64 noundef %i.bm) #20
  br label %rb_obj_write.exit.i

rb_obj_write.exit.i:                              ; preds = %bb.t, %RTYPEDDATA_GET_DATA.exit.i
  tail call void @rb_obj_freeze_inline(i64 noundef %i.bz) #20
  %i.ci = tail call i64 @rb_obj_set_shareable(i64 noundef %i.bz) #20 ; 0 uses
  store i64 %i.bz, ptr %i.br, align 8, !tbaa !19
  %i.cj = icmp eq i64 %i.bz, 0
  %i.ck = and i64 %i.bz, 7
  %i.cl = icmp ne i64 %i.ck, 0
  %i.cm = or i1 %i.cj, %i.cl
  br i1 %i.cm, label %iseqw_new.exit, label %bb.u

bb.u:                                             ; preds = %rb_obj_write.exit.i
  tail call void @rb_gc_writebarrier(i64 noundef %i.bm, i64 noundef %i.bz) #20
  br label %iseqw_new.exit

iseqw_new.exit:                                   ; preds = %bb.q, %rb_obj_write.exit.i, %bb.u
  %.0.i4 = phi i64 [ %i.bx, %bb.q ], [ %i.bz, %rb_obj_write.exit.i ], [ %i.bz, %bb.u ]
  %i.cn = tail call i64 @rb_yield(i64 noundef %.0.i4) #20 ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %iseqw_new.exit, %bb.m, %bb.l, %bb.k
  %i.co = add i32 %.0.i, 1
  br label %bb.k, !llvm.loop !5

bb.w:                                             ; preds = %bb.k
  %1 = getelementptr i8, ptr @rb_vm_insn_len_info, i64 %i.ba
  %2 = load i8, ptr %1, align 1, !tbaa !89
  %i.cp = zext i8 %2 to i32
  %i.cq = add i32 %.151.i, %i.cp                  ; 2 uses
  %i.cr = load i32, ptr %i.aw, align 4, !tbaa !88
  %i.cs = icmp ult i32 %i.cq, %i.cr
  br i1 %i.cs, label %.lr.ph52.i, label %iseq_iterate_children.exit, !llvm.loop !6

iseq_iterate_children.exit:                       ; preds = %bb.w, %.loopexit.i
  ret i64 %0
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @iseqw_s_compile(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 %2) #0 {
bb.a:
  %i.a = tail call i32 @rb_ruby_default_parser() #20
  %i.b = icmp eq i32 %i.a, 1
  %i.c = tail call fastcc i64 @iseqw_s_compile_parser(i32 noundef %0, ptr noundef %1, i1 noundef zeroext %i.b)
  ret i64 %i.c
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @iseqw_s_compile_parsey(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 %2) #0 {
bb.a:
  %i.a = tail call fastcc i64 @iseqw_s_compile_parser(i32 noundef %0, ptr noundef %1, i1 noundef zeroext false)
  ret i64 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @iseqw_s_compile_prism(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 %2) #0 {
bb.a:
  %i.a = tail call fastcc i64 @iseqw_s_compile_parser(i32 noundef %0, ptr noundef %1, i1 noundef zeroext true)
  ret i64 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @iseqw_s_compile_file_prism(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 %2) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 8 uses
  %3 = alloca %struct.rb_compile_option_struct, align 4 ; 4 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %4 = alloca %struct.pm_parse_result_t, align 8  ; 9 uses
  %i.e = alloca i64, align 8                      ; 3 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca ptr, align 8                      ; 5 uses
  %i.h = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.i = icmp sgt i32 %0, 0
  br i1 %i.i, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.j = zext nneg i32 %0 to i64
  %i.k = getelementptr [8 x i8], ptr %1, i64 %i.j
  %i.l = getelementptr i8, ptr %i.k, i64 -8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !19
  %i.n = tail call i32 @rb_keyword_given_p() #20
  %.not21 = icmp eq i32 %i.n, 0
  br i1 %.not21, label %.thread27, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = tail call i64 @rb_hash_dup(i64 noundef %i.m) #20
  %i.p = add nsw i32 %0, -1                       ; 2 uses
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %.thread, label %.thread27

.thread27:                                        ; preds = %bb.b, %bb.c
  %.1.i31 = phi i64 [ %i.o, %bb.c ], [ 4, %bb.b ] ; 3 uses
  %.193.i30 = phi i32 [ %i.p, %bb.c ], [ %0, %bb.b ] ; 3 uses
  %i.r = load i64, ptr %1, align 8, !tbaa !19     ; 2 uses
  store i64 %i.r, ptr %i.b, align 8, !tbaa !19
  %i.s = icmp samesign ugt i32 %.193.i30, 1
  br i1 %i.s, label %rb_scan_args_set.exit, label %.thread34

.thread:                                          ; preds = %bb.a, %bb.c
  %.193.i20 = phi i32 [ 0, %bb.c ], [ %0, %bb.a ]
  tail call void @rb_error_arity(i32 noundef %.193.i20, i32 noundef 1, i32 noundef -1) #22
  unreachable

rb_scan_args_set.exit:                            ; preds = %.thread27
  %i.t = icmp eq i64 %.1.i31, 4
  %i.u = select i1 %i.t, i32 2, i32 1
  %i.v = icmp samesign ugt i32 %.193.i30, %i.u
  br i1 %i.v, label %bb.d, label %bb.e

bb.d:                                             ; preds = %rb_scan_args_set.exit
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 1, i32 noundef 2) #22
  unreachable

bb.e:                                             ; preds = %rb_scan_args_set.exit
  %cond = icmp eq i32 %.193.i30, 2
  br i1 %cond, label %bb.f, label %.thread34

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr i8, ptr %1, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !19
  br label %.thread34

.thread34:                                        ; preds = %.thread27, %bb.e, %bb.f
  %i.y = phi i64 [ %.1.i31, %bb.e ], [ %i.x, %bb.f ], [ %.1.i31, %.thread27 ]
  %i.z = tail call i64 @rb_get_path(i64 noundef %i.r) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  store ptr %i.b, ptr %i.c, align 8, !tbaa !166
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.c) #20, !srcloc !381
  %i.aa = load ptr, ptr %i.c, align 8, !tbaa !166
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  store volatile i64 %i.z, ptr %i.aa, align 8, !tbaa !19
  %i.ab = load i64, ptr %i.b, align 8, !tbaa !19
  %i.ac = call i64 @rb_fstring(i64 noundef %i.ab) #20 ; 2 uses
  store i64 %i.ac, ptr %i.b, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ad = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !132
  store volatile ptr %i.ae, ptr %i.a, align 8, !tbaa !132
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.a, align 8, !tbaa !132 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  %i.af = call i64 @rb_vm_push_frame_fname(ptr noundef %.0..0..0..0..0..0..i, i64 noundef %i.ac) #20
  store i64 %i.af, ptr %i.d, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1000) %4, i8 0, i64 1000, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 752
  store i32 1, ptr %i.ag, align 8, !tbaa !382
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 976
  store i32 1, ptr %i.ah, align 8, !tbaa !263
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20
  %i.ai = load i64, ptr %i.b, align 8, !tbaa !19
  %i.aj = load i8, ptr @ruby_vm_keep_script_lines, align 1, !tbaa !264, !range !121, !noundef !122
  %i.ak = trunc nuw i8 %i.aj to i1
  %. = select i1 %i.ak, ptr %i.e, ptr null
  %i.al = call i64 @pm_load_parse_file(ptr noundef nonnull %4, i64 noundef %i.ai, ptr noundef %.) #20 ; 2 uses
  %i.am = icmp eq i64 %i.al, 4
  br i1 %i.am, label %bb.g, label %bb.j

bb.g:                                             ; preds = %.thread34
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 840
  call fastcc void @make_compile_option(ptr noundef %3, i64 noundef %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #20
  %i.ao = call i64 @rb_fstring_new(ptr noundef nonnull @.str.1, i64 noundef 6) #20
  %i.ap = load i64, ptr %i.b, align 8, !tbaa !19  ; 2 uses
  %i.aq = call i64 @rb_realpath_internal(i64 noundef 4, i64 noundef %i.ap, i32 noundef 1) #20
  %i.ar = call ptr @pm_iseq_new_with_opt(ptr noundef nonnull %i.an, i64 noundef %i.ao, i64 noundef %i.ap, i64 noundef %i.aq, i32 noundef 1, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %3, ptr noundef nonnull %i.f)
  call void @pm_parse_result_free(ptr noundef nonnull %4) #20
  %i.as = load i32, ptr %i.f, align 4, !tbaa !17  ; 2 uses
  %.not = icmp eq i32 %i.as, 0
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @rb_jump_tag(i32 noundef %i.as) #22
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.at = call fastcc i64 @iseqw_new(ptr noundef %i.ar)
  call void @rb_vm_pop_frame(ptr noundef %.0..0..0..0..0..0..i) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #20
  store ptr %i.d, ptr %i.g, align 8, !tbaa !166
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.g) #20, !srcloc !383
  %i.au = load ptr, ptr %i.g, align 8, !tbaa !166
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #20
  %i.av = load volatile i64, ptr %i.au, align 8, !tbaa !19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  ret i64 %i.at

bb.j:                                             ; preds = %.thread34
  call void @pm_parse_result_free(ptr noundef nonnull %4) #20
  call void @rb_vm_pop_frame(ptr noundef %.0..0..0..0..0..0..i) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #20
  store ptr %i.d, ptr %i.h, align 8, !tbaa !166
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.h) #20, !srcloc !384
  %i.aw = load ptr, ptr %i.h, align 8, !tbaa !166
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #20
  %i.ax = load volatile i64, ptr %i.aw, align 8, !tbaa !19 ; 0 uses
  call void @rb_exc_raise(i64 noundef %i.al) #22
  unreachable
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @iseqw_s_compile_file(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 %2) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 9 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %3 = alloca %struct.rb_compile_option_struct, align 4 ; 4 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %i.g = alloca ptr, align 8                      ; 5 uses
  %i.h = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.i = icmp sgt i32 %0, 0
  br i1 %i.i, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
end_hunk_1
begin_hunk_2_@make_compile_option:bb.a
  switch i64 %i.bs, label %bb.af [
    i64 20, label %bb.ad
    i64 0, label %bb.ae
  ]

bb.ad:                                            ; preds = %rbimpl_intern_const.exit113.i
  %i.bt = load i16, ptr %0, align 4
  %i.bu = or i16 %i.bt, 512
  br label %.sink.split171.i

bb.ae:                                            ; preds = %rbimpl_intern_const.exit113.i
  %i.bv = load i16, ptr %0, align 4
  %i.bw = and i16 %i.bv, -513
  br label %.sink.split171.i

.sink.split171.i:                                 ; preds = %bb.ae, %bb.ad
  %.sink172.i = phi i16 [ %i.bw, %bb.ae ], [ %i.bu, %bb.ad ]
  store i16 %.sink172.i, ptr %0, align 4
  br label %bb.af

bb.af:                                            ; preds = %.sink.split171.i, %rbimpl_intern_const.exit113.i
  %.pr.i114.i = load i64, ptr @set_compile_option_from_hash.rbimpl_id.154, align 8, !tbaa !19 ; 2 uses
  %.not4.i115.i = icmp eq i64 %.pr.i114.i, 0
  br i1 %.not4.i115.i, label %.lr.ph.i117.i, label %rbimpl_intern_const.exit119.i

.lr.ph.i117.i:                                    ; preds = %bb.af, %.lr.ph.i117.i
  %i.bx = tail call i64 @rb_intern2(ptr noundef nonnull @.str.155, i64 noundef 11) #20 ; 3 uses
  store i64 %i.bx, ptr @set_compile_option_from_hash.rbimpl_id.154, align 8, !tbaa !19
  %.not.i118.i = icmp eq i64 %i.bx, 0
  br i1 %.not.i118.i, label %.lr.ph.i117.i, label %rbimpl_intern_const.exit119.i, !llvm.loop !1

rbimpl_intern_const.exit119.i:                    ; preds = %.lr.ph.i117.i, %bb.af
  %.lcssa.i116.i = phi i64 [ %.pr.i114.i, %bb.af ], [ %i.bx, %.lr.ph.i117.i ]
  %i.by = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i116.i) #20
  %i.bz = tail call i64 @rb_hash_aref(i64 noundef range(i64 1, 0) %1, i64 noundef %i.by) #20 ; 4 uses
  %i.ca = icmp eq i64 %i.bz, 4
  br i1 %i.ca, label %set_compile_option_from_hash.exit, label %bb.ag

bb.ag:                                            ; preds = %rbimpl_intern_const.exit119.i
  %i.cb = trunc i64 %i.bz to i1
  br i1 %i.cb, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.cc = tail call i64 @rb_fix2int(i64 noundef %i.bz) #20
  br label %rb_num2int_inline.exit.i

bb.ai:                                            ; preds = %bb.ag
  %i.cd = tail call i64 @rb_num2int(i64 noundef %i.bz) #20
  br label %rb_num2int_inline.exit.i

rb_num2int_inline.exit.i:                         ; preds = %bb.ai, %bb.ah
  %.0.i.i = phi i64 [ %i.cc, %bb.ah ], [ %i.cd, %bb.ai ]
  %i.ce = trunc i64 %.0.i.i to i32
  %i.cf = getelementptr i8, ptr %0, i64 4
  store i32 %i.ce, ptr %i.cf, align 4, !tbaa !268
  br label %set_compile_option_from_hash.exit

rbimpl_RB_TYPE_P_fastpath.exit.thread:            ; preds = %bb.d, %rbimpl_RB_TYPE_P_fastpath.exit
  %i.cg = load i64, ptr @rb_eTypeError, align 8, !tbaa !19
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.cg, ptr noundef nonnull @.str.136) #22
  unreachable

set_compile_option_from_hash.exit:                ; preds = %.preheader.preheader, %rb_num2int_inline.exit.i, %rbimpl_intern_const.exit119.i, %bb.c, %bb.b
  ret void
}

declare void @rb_iseq_build_from_ary(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare i64 @rb_num2long(i64 noundef) local_unnamed_addr #2

declare i64 @rb_check_id(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

declare i64 @rb_int2big(i64 noundef) local_unnamed_addr #2

declare ptr @rb_check_typeddata(i64 noundef, ptr noundef) local_unnamed_addr #2

declare i64 @rb_data_typed_object_zalloc(i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal void @iseqw_mark_and_move(ptr noundef %0) #0 {
bb.a:
  tail call void @rb_gc_mark_and_move(ptr noundef %0) #20
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @iseqw_memsize(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !211
  %i.b = tail call i64 @rb_iseq_memsize(ptr noundef %i.a)
  ret i64 %i.b
}

declare void @rb_ibf_load_iseq_complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #17

declare void @rb_vm_lock_enter_body(ptr noundef) local_unnamed_addr #2

declare void @rb_vm_lock_leave_body(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i32 @rb_is_local_id(i64 noundef) local_unnamed_addr #18

declare i64 @rb_str_inspect(i64 noundef) local_unnamed_addr #2

declare i64 @rb_str_dup(i64 noundef) local_unnamed_addr #2

declare i64 @rb_str_resurrect(i64 noundef) local_unnamed_addr #2

declare i64 @rb_ary_resurrect(i64 noundef) local_unnamed_addr #2

declare i64 @rb_hash_resurrect(i64 noundef) local_unnamed_addr #2

declare i64 @rb_fix2int(i64 noundef) local_unnamed_addr #2

declare i64 @rb_num2int(i64 noundef) local_unnamed_addr #2

declare i64 @rb_str_cat(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @rb_str_set_len(i64 noundef, i64 noundef) local_unnamed_addr #2

declare i64 @rb_str_append(i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @rb_str_modify_expand(i64 noundef, i64 noundef) local_unnamed_addr #2

declare ptr @rb_st_init_numtable() local_unnamed_addr #2

declare i64 @rb_data_typed_object_wrap(i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ruby_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @rb_iseq_original_iseq(ptr noundef) local_unnamed_addr #2

declare void @rb_mark_set(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #14

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @iseq_iterate_children(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @rb_iseq_original_iseq(ptr noundef %0) #20 ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !27   ; 2 uses
  %i.d = tail call i64 @rb_ident_hash_new() #20
  %i.e = tail call i64 @rb_obj_hide(i64 noundef %i.d) #20 ; 4 uses
  %i.f = getelementptr i8, ptr %i.c, i64 160      ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !86   ; 3 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.h = load i32, ptr %i.g, align 1, !tbaa !17
  %.not53 = icmp eq i32 %i.h, 0
  br i1 %.not53, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.d
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.d ], [ 0, %.preheader ] ; 2 uses
  %i.i = phi ptr [ %i.q, %bb.d ], [ %i.g, %.preheader ]
  %i.j = getelementptr [32 x i8], ptr %i.i, i64 %indvars.iv
  %i.k = getelementptr i8, ptr %i.j, i64 12
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !120  ; 3 uses
  %.not49 = icmp eq ptr %i.l, null
  br i1 %.not49, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.m = ptrtoint ptr %i.l to i64                 ; 2 uses
  %i.n = tail call i64 @rb_hash_aref(i64 noundef %i.e, i64 noundef %i.m) #20
  %i.o = icmp eq i64 %i.n, 4
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.p = tail call i64 @rb_hash_aset(i64 noundef %i.e, i64 noundef %i.m, i64 noundef 20) #20 ; 0 uses
  tail call void %1(ptr noundef nonnull %i.l, ptr noundef %2) #20, !callees !391
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.q = load ptr, ptr %i.f, align 8, !tbaa !86   ; 2 uses
  %i.r = load i32, ptr %i.q, align 1, !tbaa !17
  %i.s = zext i32 %i.r to i64
  %i.t = icmp samesign ult i64 %indvars.iv.next, %i.s
  br i1 %i.t, label %.lr.ph, label %.loopexit, !llvm.loop !4

.loopexit:                                        ; preds = %bb.d, %.preheader, %bb.a
  %i.u = getelementptr i8, ptr %i.c, i64 4        ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !88
  %.not54 = icmp eq i32 %i.v, 0
  br i1 %.not54, label %RHASH_SIZE.exit, label %.lr.ph52

.lr.ph52:                                         ; preds = %.loopexit, %bb.j
  %.151 = phi i32 [ %i.ar, %bb.j ], [ 0, %.loopexit ] ; 3 uses
  %i.w = zext i32 %.151 to i64
  %i.x = getelementptr [8 x i8], ptr %i.a, i64 %i.w
  %i.y = load i64, ptr %i.x, align 8, !tbaa !19   ; 2 uses
  %i.z = getelementptr [2 x i8], ptr @rb_vm_insn_op_offset, i64 %i.y
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !223
  %i.ab = zext i16 %i.aa to i64
  %i.ac = getelementptr i8, ptr @rb_vm_insn_op_base, i64 %i.ab
  %i.ad = add nuw i32 %.151, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.i, %.lr.ph52
  %.0 = phi i32 [ 0, %.lr.ph52 ], [ %i.ap, %bb.i ] ; 3 uses
  %i.ae = sext i32 %.0 to i64
  %i.af = getelementptr i8, ptr %i.ac, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !89
  switch i8 %i.ag, label %bb.i [
    i8 0, label %bb.j
    i8 83, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  %i.ah = add i32 %i.ad, %.0
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr [8 x i8], ptr %i.a, i64 %i.ai
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !19 ; 4 uses
  %i.al = inttoptr i64 %i.ak to ptr
  %.not48 = icmp eq i64 %i.ak, 0
  br i1 %.not48, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.am = tail call i64 @rb_hash_aref(i64 noundef %i.e, i64 noundef %i.ak) #20
  %i.an = icmp eq i64 %i.am, 4
  br i1 %i.an, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ao = tail call i64 @rb_hash_aset(i64 noundef %i.e, i64 noundef %i.ak, i64 noundef 20) #20 ; 0 uses
  tail call void %1(ptr noundef nonnull %i.al, ptr noundef %2) #20, !callees !391
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.g, %bb.h, %bb.f
  %i.ap = add i32 %.0, 1
  br label %bb.e, !llvm.loop !5

bb.j:                                             ; preds = %bb.e
  %3 = getelementptr i8, ptr @rb_vm_insn_len_info, i64 %i.y
  %4 = load i8, ptr %3, align 1, !tbaa !89
  %i.aq = zext i8 %4 to i32
  %i.ar = add i32 %.151, %i.aq                    ; 2 uses
  %i.as = load i32, ptr %i.u, align 4, !tbaa !88
  %i.at = icmp ult i32 %i.ar, %i.as
  br i1 %i.at, label %.lr.ph52, label %RHASH_SIZE.exit, !llvm.loop !6

RHASH_SIZE.exit:                                  ; preds = %bb.j, %.loopexit
  ret void
}

declare void @rb_hook_list_connect_local_tracepoint(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare i64 @rb_obj_hide(i64 noundef) local_unnamed_addr #2

declare i64 @rb_ident_hash_new() local_unnamed_addr #2

declare zeroext i1 @rb_hook_list_remove_local_tracepoint(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @rb_hook_list_count(ptr noundef) local_unnamed_addr #2

declare i32 @rb_st_delete(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @rb_hook_list_free(ptr noundef) local_unnamed_addr #2

declare void @rb_vm_cc_general(ptr noundef) local_unnamed_addr #2

declare noalias ptr @rb_xcalloc_mul_add_mul(i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare i64 @rb_class_name(i64 noundef) local_unnamed_addr #2

declare i64 @rb_obj_class(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @iseq_data_to_ary(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %i.f = getelementptr i8, ptr %0, i64 16         ; 5 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !27   ; 24 uses
  %i.h = tail call i64 @rb_ary_new() #20          ; 15 uses
  %i.i = tail call i64 @rb_ary_new() #20          ; 2 uses
  %i.j = tail call i64 @rb_hash_new() #20         ; 12 uses
  %i.k = tail call i64 @rb_ary_new() #20          ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.l = tail call i64 @rb_ary_new() #20          ; 2 uses
  %i.m = tail call i64 @rb_hash_new() #20         ; 8 uses
  %i.n = tail call ptr @rb_st_init_numtable() #20 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.o = tail call i64 @rb_data_typed_object_wrap(i64 noundef 0, ptr noundef %i.n, ptr noundef nonnull @label_wrapper) #20
  store i64 %i.o, ptr %i.b, align 8, !tbaa !19
  %i.p = load i64, ptr @iseq_data_to_ary.insn_syms, align 16, !tbaa !19
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %.preheader666, label %.loopexit667

.preheader666:                                    ; preds = %bb.a, %.preheader666
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader666 ], [ 0, %bb.a ] ; 3 uses
  %i.r = getelementptr [2 x i8], ptr @rb_vm_insn_name_offset, i64 %indvars.iv
  %i.s = load i16, ptr %i.r, align 2, !tbaa !223
  %i.t = zext i16 %i.s to i64
  %i.u = getelementptr i8, ptr @rb_vm_insn_name_base, i64 %i.t
  %i.v = tail call i64 @rb_intern(ptr noundef %i.u) #20
  %i.w = getelementptr [8 x i8], ptr @iseq_data_to_ary.insn_syms, i64 %indvars.iv
  store i64 %i.v, ptr %i.w, align 8, !tbaa !19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 109
  br i1 %exitcond.not, label %.loopexit667, label %.preheader666, !llvm.loop !392

.loopexit667:                                     ; preds = %.preheader666, %bb.a
  %i.x = load i32, ptr %i.g, align 8, !tbaa !126
  %i.y = tail call fastcc i64 @iseq_type_id(i32 noundef %i.x)
  %i.z = getelementptr i8, ptr %i.g, i64 240      ; 4 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !124 ; 2 uses
  %.not751 = icmp eq i32 %i.aa, 0
  br i1 %.not751, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.loopexit667
  %i.ab = getelementptr i8, ptr %i.g, i64 144
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.g
  %i.ac = phi i32 [ %i.aa, %.lr.ph ], [ %i.ar, %bb.g ]
  %indvars.iv808 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next809, %bb.g ] ; 3 uses
  %i.ad = load ptr, ptr %i.ab, align 8, !tbaa !94
  %i.ae = getelementptr [8 x i8], ptr %i.ad, i64 %indvars.iv808
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !19 ; 3 uses
  switch i64 %i.af, label %bb.c [
    i64 0, label %bb.f
    i64 153, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b
  %i.ag = tail call i64 @rb_id2str(i64 noundef %i.af) #20
  %.not392 = icmp eq i64 %i.ag, 0
  br i1 %.not392, label %._crit_edge832, label %bb.d

._crit_edge832:                                   ; preds = %bb.c
  %.pre = load i32, ptr %i.z, align 8, !tbaa !124
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ah = tail call i64 @rb_id2sym(i64 noundef %i.af) #20
  br label %bb.g

bb.e:                                             ; preds = %._crit_edge832, %bb.b
  %i.ai = phi i32 [ %.pre, %._crit_edge832 ], [ %i.ac, %bb.b ]
  %i.aj = trunc nuw i64 %indvars.iv808 to i32
  %reass.sub = sub i32 %i.ai, %i.aj
  %i.ak = add i32 %reass.sub, 1
  %i.al = zext i32 %i.ak to i64
  %i.am = shl nuw nsw i64 %i.al, 1
  %i.an = or disjoint i64 %i.am, 1
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %.pr.i = load i64, ptr @iseq_data_to_ary.rbimpl_id.204, align 8, !tbaa !19 ; 2 uses
  %.not4.i = icmp eq i64 %.pr.i, 0
  br i1 %.not4.i, label %.lr.ph.i, label %rbimpl_intern_const.exit

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.i
  %i.ao = tail call i64 @rb_intern2(ptr noundef nonnull @.str.205, i64 noundef 9) #20 ; 3 uses
  store i64 %i.ao, ptr @iseq_data_to_ary.rbimpl_id.204, align 8, !tbaa !19
  %.not.i = icmp eq i64 %i.ao, 0
  br i1 %.not.i, label %.lr.ph.i, label %rbimpl_intern_const.exit, !llvm.loop !1

rbimpl_intern_const.exit:                         ; preds = %.lr.ph.i, %bb.f
  %.lcssa.i = phi i64 [ %.pr.i, %bb.f ], [ %i.ao, %.lr.ph.i ]
  %i.ap = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i) #20
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.e, %rbimpl_intern_const.exit
  %.sink = phi i64 [ %i.ah, %bb.d ], [ %i.an, %bb.e ], [ %i.ap, %rbimpl_intern_const.exit ]
  %i.aq = tail call i64 @rb_ary_push(i64 noundef %i.i, i64 noundef %.sink) #20 ; 0 uses
  %indvars.iv.next809 = add nuw nsw i64 %indvars.iv808, 1 ; 2 uses
  %i.ar = load i32, ptr %i.z, align 8, !tbaa !124 ; 2 uses
  %i.as = zext i32 %i.ar to i64
  %i.at = icmp samesign ult i64 %indvars.iv.next809, %i.as
  br i1 %i.at, label %bb.b, label %._crit_edge, !llvm.loop !393

._crit_edge:                                      ; preds = %bb.g, %.loopexit667
  %i.au = getelementptr i8, ptr %i.g, i64 16      ; 10 uses
  %i.av = getelementptr i8, ptr %i.g, i64 56
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !91 ; 8 uses
  %i.ax = load i16, ptr %i.au, align 8            ; 2 uses
  %i.ay = and i16 %i.ax, 2
  %.not = icmp eq i16 %i.ay, 0
  br i1 %.not, label %bb.j, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  %i.az = getelementptr i8, ptr %i.g, i64 28
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !125 ; 2 uses
  %i.bb = add i32 %i.ba, 1                        ; 2 uses
  %i.bc = sext i32 %i.bb to i64
  %i.bd = tail call i64 @rb_ary_new_capa(i64 noundef %i.bc) #20 ; 2 uses
  %i.be = icmp ult i32 %i.ba, 2147483647
  br i1 %i.be, label %.lr.ph718, label %._crit_edge719

.lr.ph718:                                        ; preds = %bb.h
  %i.bf = getelementptr i8, ptr %i.g, i64 48
  %wide.trip.count = zext nneg i32 %i.bb to i64
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph718, %bb.i
  %indvars.iv811 = phi i64 [ 0, %.lr.ph718 ], [ %indvars.iv.next812, %bb.i ] ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !87
  %i.bh = getelementptr [8 x i8], ptr %i.bg, i64 %indvars.iv811
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !19 ; 2 uses
  %i.bj = tail call i64 (ptr, ...) @rb_sprintf(ptr noundef nonnull @.str.276, i64 noundef %i.bi) #20
  %i.bk = tail call i64 @rb_str_intern(i64 noundef %i.bj) #20 ; 2 uses
  %i.bl = tail call i32 @rb_st_insert(ptr noundef %i.n, i64 noundef %i.bi, i64 noundef %i.bk) #20 ; 0 uses
  %i.bm = tail call i64 @rb_ary_push(i64 noundef %i.bd, i64 noundef %i.bk) #20 ; 0 uses
  %indvars.iv.next812 = add nuw nsw i64 %indvars.iv811, 1 ; 2 uses
  %exitcond814.not = icmp eq i64 %indvars.iv.next812, %wide.trip.count
  br i1 %exitcond814.not, label %._crit_edge719, label %bb.i, !llvm.loop !394

._crit_edge719:                                   ; preds = %bb.i, %bb.h
  %.pr.i393 = load i64, ptr @iseq_data_to_ary.rbimpl_id.206, align 8, !tbaa !19 ; 2 uses
  %.not4.i394 = icmp eq i64 %.pr.i393, 0
  br i1 %.not4.i394, label %.lr.ph.i396, label %rbimpl_intern_const.exit398

.lr.ph.i396:                                      ; preds = %._crit_edge719, %.lr.ph.i396
  %i.bn = tail call i64 @rb_intern2(ptr noundef nonnull @.str.61, i64 noundef 3) #20 ; 3 uses
  store i64 %i.bn, ptr @iseq_data_to_ary.rbimpl_id.206, align 8, !tbaa !19
  %.not.i397 = icmp eq i64 %i.bn, 0
  br i1 %.not.i397, label %.lr.ph.i396, label %rbimpl_intern_const.exit398, !llvm.loop !1

rbimpl_intern_const.exit398:                      ; preds = %.lr.ph.i396, %._crit_edge719
  %.lcssa.i395 = phi i64 [ %.pr.i393, %._crit_edge719 ], [ %i.bn, %.lr.ph.i396 ]
  %i.bo = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i395) #20
  %i.bp = tail call i64 @rb_hash_aset(i64 noundef %i.j, i64 noundef %i.bo, i64 noundef %i.bd) #20 ; 0 uses
  %.pre833 = load i16, ptr %i.au, align 8
  br label %bb.j

bb.j:                                             ; preds = %rbimpl_intern_const.exit398, %._crit_edge
  %i.bq = phi i16 [ %.pre833, %rbimpl_intern_const.exit398 ], [ %i.ax, %._crit_edge ] ; 2 uses
  %i.br = and i16 %i.bq, 1
  %.not364 = icmp eq i16 %i.br, 0
  br i1 %.not364, label %bb.l, label %bb.k
end_hunk_2
begin_hunk_3_@iseq_data_to_ary:bb.a
  br i1 %i.hv, label %obj_resurrect.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.hw = inttoptr i64 %i.hr to ptr               ; 2 uses
  %i.hx = getelementptr i8, ptr %i.hw, i64 8
  %i.hy = load i64, ptr %i.hx, align 8, !tbaa !212
  %.not.i460 = icmp eq i64 %i.hy, 0
  br i1 %.not.i460, label %bb.aj, label %obj_resurrect.exit

bb.aj:                                            ; preds = %bb.ai
  %i.hz = load i64, ptr %i.hw, align 8, !tbaa !80
  %i.ia = trunc i64 %i.hz to i32
  %i.ib = and i32 %i.ia, 31
  switch i32 %i.ib, label %obj_resurrect.exit [
    i32 5, label %bb.ak
    i32 7, label %bb.al
    i32 8, label %bb.am
  ]

bb.ak:                                            ; preds = %bb.aj
  %i.ic = tail call i64 @rb_str_resurrect(i64 noundef %i.hr) #20
  br label %obj_resurrect.exit

bb.al:                                            ; preds = %bb.aj
  %i.id = tail call i64 @rb_ary_resurrect(i64 noundef %i.hr) #20
  br label %obj_resurrect.exit

bb.am:                                            ; preds = %bb.aj
  %i.ie = tail call i64 @rb_hash_resurrect(i64 noundef %i.hr) #20
  br label %obj_resurrect.exit

bb.an:                                            ; preds = %insn_op_type.exit
  %i.if = load i64, ptr %.1346740, align 8, !tbaa !19 ; 2 uses
  %.not389 = icmp eq i64 %i.if, 0
  br i1 %.not389, label %obj_resurrect.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ig = inttoptr i64 %i.if to ptr
  %i.ih = tail call fastcc i64 @iseq_data_to_ary(ptr noundef nonnull %i.ig)
  br label %obj_resurrect.exit

bb.ap:                                            ; preds = %insn_op_type.exit
  %i.ii = tail call i64 @rb_ary_new() #20         ; 3 uses
  %i.ij = load i64, ptr %.1346740, align 8, !tbaa !19
  %i.ik = inttoptr i64 %i.ij to ptr
  %i.il = getelementptr i8, ptr %i.ik, i64 8
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !53 ; 2 uses
  %i.in = load i64, ptr %i.im, align 8, !tbaa !19 ; 2 uses
  %.not388731 = icmp eq i64 %i.in, 0
  br i1 %.not388731, label %obj_resurrect.exit, label %.lr.ph734

.lr.ph734:                                        ; preds = %bb.ap, %.lr.ph734
  %i.io = phi i64 [ %i.is, %.lr.ph734 ], [ %i.in, %bb.ap ]
  %.0356732 = phi ptr [ %i.ip, %.lr.ph734 ], [ %i.im, %bb.ap ]
  %i.ip = getelementptr i8, ptr %.0356732, i64 8  ; 2 uses
  %i.iq = tail call i64 @rb_id2sym(i64 noundef %i.io) #20
  %i.ir = tail call i64 @rb_ary_push(i64 noundef %i.ii, i64 noundef %i.iq) #20 ; 0 uses
  %i.is = load i64, ptr %i.ip, align 8, !tbaa !19 ; 2 uses
  %.not388 = icmp eq i64 %i.is, 0
  br i1 %.not388, label %obj_resurrect.exit, label %.lr.ph734, !llvm.loop !397

bb.aq:                                            ; preds = %insn_op_type.exit, %insn_op_type.exit, %insn_op_type.exit
  %i.it = load i64, ptr %.1346740, align 8, !tbaa !19
  %i.iu = load ptr, ptr %i.f, align 8, !tbaa !27  ; 4 uses
  switch i8 %i.hi, label %bb.au [
    i8 75, label %bb.ar
    i8 84, label %bb.as
    i8 74, label %bb.at
    i8 65, label %ISEQ_IS_ENTRY_START.exit
  ]

bb.ar:                                            ; preds = %bb.aq
  %i.iv = getelementptr i8, ptr %i.iu, i64 248
  %i.iw = load i32, ptr %i.iv, align 8, !tbaa !48
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.0.i462 = phi i32 [ %i.iw, %bb.ar ], [ 0, %bb.aq ]
  %i.ix = getelementptr i8, ptr %i.iu, i64 256
  %i.iy = load i32, ptr %i.ix, align 8, !tbaa !49
  %i.iz = add i32 %i.iy, %.0.i462
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.aq
  %.1.i = phi i32 [ %i.iz, %bb.as ], [ 0, %bb.aq ]
  %i.ja = getelementptr i8, ptr %i.iu, i64 252
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !50
  %i.jc = add i32 %i.jb, %.1.i
  %i.jd = zext i32 %i.jc to i64
  br label %ISEQ_IS_ENTRY_START.exit

bb.au:                                            ; preds = %bb.aq
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.277) #23
  unreachable

ISEQ_IS_ENTRY_START.exit:                         ; preds = %bb.aq, %bb.at
  %.2.i = phi i64 [ %i.jd, %bb.at ], [ 0, %bb.aq ]
  %i.je = getelementptr i8, ptr %i.iu, i64 184
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !46
  %i.jg = getelementptr [16 x i8], ptr %i.jf, i64 %.2.i
  %i.jh = ptrtoint ptr %i.jg to i64
  %i.ji = sub i64 %i.it, %i.jh
  %i.jj = ashr exact i64 %i.ji, 3
  %i.jk = or disjoint i64 %i.jj, 1
  br label %obj_resurrect.exit

bb.av:                                            ; preds = %insn_op_type.exit
  %i.jl = load i64, ptr %.1346740, align 8, !tbaa !19
  %i.jm = inttoptr i64 %i.jl to ptr
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !117 ; 5 uses
  %i.jo = tail call i64 @rb_hash_new() #20        ; 6 uses
  %i.jp = ptrtoint ptr %i.jn to i64               ; 5 uses
  %.not.i.i = trunc i64 %i.jp to i1               ; 2 uses
  br i1 %.not.i.i, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.jq = trunc i64 %i.jp to i32
  %i.jr = lshr i32 %i.jq, 1
  %i.js = and i32 %i.jr, 32767
  %i.jt = lshr i64 %i.jp, 32
  br label %vm_ci_mid.exit

bb.ax:                                            ; preds = %bb.av
  %i.ju = getelementptr i8, ptr %i.jn, i64 32
  %i.jv = load i64, ptr %i.ju, align 8, !tbaa !227
  %i.jw = trunc i64 %i.jv to i32
  %i.jx = getelementptr i8, ptr %i.jn, i64 16
  %i.jy = load i64, ptr %i.jx, align 8, !tbaa !226
  br label %vm_ci_mid.exit

vm_ci_mid.exit:                                   ; preds = %bb.aw, %bb.ax
  %.0.i463653 = phi i32 [ %i.js, %bb.aw ], [ %i.jw, %bb.ax ] ; 3 uses
  %.0.i465 = phi i64 [ %i.jt, %bb.aw ], [ %i.jy, %bb.ax ] ; 2 uses
  %.pr.i466 = load i64, ptr @iseq_data_to_ary.rbimpl_id.227, align 8, !tbaa !19 ; 2 uses
  %.not4.i467 = icmp eq i64 %.pr.i466, 0
  br i1 %.not4.i467, label %.lr.ph.i469, label %rbimpl_intern_const.exit471

.lr.ph.i469:                                      ; preds = %vm_ci_mid.exit, %.lr.ph.i469
  %i.jz = tail call i64 @rb_intern2(ptr noundef nonnull @.str.228, i64 noundef 3) #20 ; 3 uses
  store i64 %i.jz, ptr @iseq_data_to_ary.rbimpl_id.227, align 8, !tbaa !19
  %.not.i470 = icmp eq i64 %i.jz, 0
  br i1 %.not.i470, label %.lr.ph.i469, label %rbimpl_intern_const.exit471, !llvm.loop !1

rbimpl_intern_const.exit471:                      ; preds = %.lr.ph.i469, %vm_ci_mid.exit
  %.lcssa.i468 = phi i64 [ %.pr.i466, %vm_ci_mid.exit ], [ %i.jz, %.lr.ph.i469 ]
  %i.ka = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i468) #20
  %.not386 = icmp eq i64 %.0.i465, 0
  br i1 %.not386, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %rbimpl_intern_const.exit471
  %i.kb = tail call i64 @rb_id2sym(i64 noundef %.0.i465) #20
  br label %bb.az

bb.az:                                            ; preds = %rbimpl_intern_const.exit471, %bb.ay
  %i.kc = phi i64 [ %i.kb, %bb.ay ], [ 4, %rbimpl_intern_const.exit471 ]
  %i.kd = tail call i64 @rb_hash_aset(i64 noundef %i.jo, i64 noundef %i.ka, i64 noundef %i.kc) #20 ; 0 uses
  %.pr.i472 = load i64, ptr @iseq_data_to_ary.rbimpl_id.229, align 8, !tbaa !19 ; 2 uses
  %.not4.i473 = icmp eq i64 %.pr.i472, 0
  br i1 %.not4.i473, label %.lr.ph.i475, label %rbimpl_intern_const.exit477

.lr.ph.i475:                                      ; preds = %bb.az, %.lr.ph.i475
  %i.ke = tail call i64 @rb_intern2(ptr noundef nonnull @.str.230, i64 noundef 4) #20 ; 3 uses
  store i64 %i.ke, ptr @iseq_data_to_ary.rbimpl_id.229, align 8, !tbaa !19
  %.not.i476 = icmp eq i64 %i.ke, 0
  br i1 %.not.i476, label %.lr.ph.i475, label %rbimpl_intern_const.exit477, !llvm.loop !1

rbimpl_intern_const.exit477:                      ; preds = %.lr.ph.i475, %bb.az
  %.lcssa.i474 = phi i64 [ %.pr.i472, %bb.az ], [ %i.ke, %.lr.ph.i475 ]
  %i.kf = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i474) #20 ; 2 uses
  br i1 %.not.i.i, label %vm_ci_flag.exit482, label %vm_ci_flag.exit482.thread

vm_ci_flag.exit482:                               ; preds = %rbimpl_intern_const.exit477
  %i.kg = lshr i64 %i.jp, 15
  %i.kh = and i64 %i.kg, 131070
  %i.ki = or disjoint i64 %i.kh, 1
  %i.kj = tail call i64 @rb_hash_aset(i64 noundef %i.jo, i64 noundef %i.kf, i64 noundef %i.ki) #20 ; 0 uses
  %i.kk = and i64 %i.jp, 2097152
  %.not387 = icmp eq i64 %i.kk, 0
  tail call void @llvm.assume(i1 %.not387)
  br label %bb.bb

vm_ci_flag.exit482.thread:                        ; preds = %rbimpl_intern_const.exit477
  %i.kl = getelementptr i8, ptr %i.jn, i64 24     ; 2 uses
  %i.km = load i64, ptr %i.kl, align 8, !tbaa !228
  %i.kn = shl i64 %i.km, 1
  %i.ko = and i64 %i.kn, 8589934590
  %i.kp = or disjoint i64 %i.ko, 1
  %i.kq = tail call i64 @rb_hash_aset(i64 noundef %i.jo, i64 noundef %i.kf, i64 noundef %i.kp) #20 ; 0 uses
  %i.kr = load i64, ptr %i.kl, align 8, !tbaa !228
  %i.ks = and i64 %i.kr, 32
  %.not387657 = icmp eq i64 %i.ks, 0
  br i1 %.not387657, label %bb.bb, label %.thread

.thread:                                          ; preds = %vm_ci_flag.exit482.thread
  %i.kt = getelementptr i8, ptr %i.jn, i64 8
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !229 ; 4 uses
  %i.kv = load i32, ptr %i.ku, align 8, !tbaa !17
  %i.kw = sext i32 %i.kv to i64
  %i.kx = tail call i64 @rb_ary_new_capa(i64 noundef %i.kw) #20 ; 2 uses
  %i.ky = load i32, ptr %i.ku, align 8, !tbaa !17 ; 2 uses
  %i.kz = icmp sgt i32 %i.ky, 0
  br i1 %i.kz, label %.lr.ph729, label %._crit_edge730

.lr.ph729:                                        ; preds = %.thread
  %i.la = getelementptr i8, ptr %i.ku, i64 8
  br label %bb.ba

bb.ba:                                            ; preds = %.lr.ph729, %bb.ba
  %indvars.iv821 = phi i64 [ 0, %.lr.ph729 ], [ %indvars.iv.next822, %bb.ba ] ; 2 uses
  %i.lb = getelementptr [8 x i8], ptr %i.la, i64 %indvars.iv821
  %i.lc = load i64, ptr %i.lb, align 8, !tbaa !19
  %i.ld = tail call i64 @rb_ary_push(i64 noundef %i.kx, i64 noundef %i.lc) #20 ; 0 uses
  %indvars.iv.next822 = add nuw nsw i64 %indvars.iv821, 1 ; 2 uses
  %i.le = load i32, ptr %i.ku, align 8, !tbaa !17
  %i.lf = sext i32 %i.le to i64
  %i.lg = icmp slt i64 %indvars.iv.next822, %i.lf
  br i1 %i.lg, label %bb.ba, label %._crit_edge730, !llvm.loop !398

._crit_edge730:                                   ; preds = %bb.ba, %.thread
  %1 = sub i32 %.0.i463653, %i.ky
  %.pr.i485 = load i64, ptr @iseq_data_to_ary.rbimpl_id.231, align 8, !tbaa !19 ; 2 uses
  %.not4.i486 = icmp eq i64 %.pr.i485, 0
  br i1 %.not4.i486, label %.lr.ph.i488, label %rbimpl_intern_const.exit490

.lr.ph.i488:                                      ; preds = %._crit_edge730, %.lr.ph.i488
  %i.lh = tail call i64 @rb_intern2(ptr noundef nonnull @.str.232, i64 noundef 6) #20 ; 3 uses
  store i64 %i.lh, ptr @iseq_data_to_ary.rbimpl_id.231, align 8, !tbaa !19
  %.not.i489 = icmp eq i64 %i.lh, 0
  br i1 %.not.i489, label %.lr.ph.i488, label %rbimpl_intern_const.exit490, !llvm.loop !1

rbimpl_intern_const.exit490:                      ; preds = %.lr.ph.i488, %._crit_edge730
  %.lcssa.i487 = phi i64 [ %.pr.i485, %._crit_edge730 ], [ %i.lh, %.lr.ph.i488 ]
  %i.li = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i487) #20
  %i.lj = tail call i64 @rb_hash_aset(i64 noundef %i.jo, i64 noundef %i.li, i64 noundef %i.kx) #20 ; 0 uses
  br label %bb.bb

bb.bb:                                            ; preds = %vm_ci_flag.exit482, %vm_ci_flag.exit482.thread, %rbimpl_intern_const.exit490
  %.0355 = phi i32 [ %1, %rbimpl_intern_const.exit490 ], [ %.0.i463653, %vm_ci_flag.exit482 ], [ %.0.i463653, %vm_ci_flag.exit482.thread ]
  %.pr.i491 = load i64, ptr @iseq_data_to_ary.rbimpl_id.233, align 8, !tbaa !19 ; 2 uses
  %.not4.i492 = icmp eq i64 %.pr.i491, 0
  br i1 %.not4.i492, label %.lr.ph.i494, label %rbimpl_intern_const.exit496

.lr.ph.i494:                                      ; preds = %bb.bb, %.lr.ph.i494
  %i.lk = tail call i64 @rb_intern2(ptr noundef nonnull @.str.234, i64 noundef 9) #20 ; 3 uses
  store i64 %i.lk, ptr @iseq_data_to_ary.rbimpl_id.233, align 8, !tbaa !19
  %.not.i495 = icmp eq i64 %i.lk, 0
  br i1 %.not.i495, label %.lr.ph.i494, label %rbimpl_intern_const.exit496, !llvm.loop !1

rbimpl_intern_const.exit496:                      ; preds = %.lr.ph.i494, %bb.bb
  %.lcssa.i493 = phi i64 [ %.pr.i491, %bb.bb ], [ %i.lk, %.lr.ph.i494 ]
  %i.ll = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i493) #20
  %i.lm = sext i32 %.0355 to i64
  %i.ln = shl nsw i64 %i.lm, 1
  %i.lo = or disjoint i64 %i.ln, 1
  %i.lp = tail call i64 @rb_hash_aset(i64 noundef %i.jo, i64 noundef %i.ll, i64 noundef %i.lo) #20 ; 0 uses
  br label %obj_resurrect.exit

bb.bc:                                            ; preds = %insn_op_type.exit
  %i.lq = load i64, ptr %.1346740, align 8, !tbaa !19
  %i.lr = tail call i64 @rb_id2sym(i64 noundef %i.lq) #20
  br label %obj_resurrect.exit

bb.bd:                                            ; preds = %insn_op_type.exit
  %i.ls = load i64, ptr %.1346740, align 8, !tbaa !19
  %i.lt = tail call i64 @rb_ary_new() #20         ; 5 uses
  tail call void @rb_hash_foreach(i64 noundef %i.ls, ptr noundef nonnull @cdhash_each, i64 noundef %i.lt) #20
  %i.lu = inttoptr i64 %i.lt to ptr               ; 2 uses
  %i.lv = getelementptr i8, ptr %i.lu, i64 16
  br label %bb.be

bb.be:                                            ; preds = %bb.bh, %bb.bd
  %.0353 = phi i32 [ 0, %bb.bd ], [ %i.mm, %bb.bh ] ; 3 uses
  %i.lw = sext i32 %.0353 to i64
  %i.lx = load i64, ptr %i.lu, align 8, !tbaa !80 ; 2 uses
  %i.ly = and i64 %i.lx, 8192
  %.not.i497 = icmp eq i64 %i.ly, 0
  br i1 %.not.i497, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.lz = lshr i64 %i.lx, 15
  %i.ma = and i64 %i.lz, 127
  br label %rb_array_len.exit

bb.bg:                                            ; preds = %bb.be
  %i.mb = load i64, ptr %i.lv, align 8, !tbaa !89
  br label %rb_array_len.exit

rb_array_len.exit:                                ; preds = %bb.bf, %bb.bg
  %.0.i498 = phi i64 [ %i.ma, %bb.bf ], [ %i.mb, %bb.bg ]
  %i.mc = icmp sgt i64 %.0.i498, %i.lw
  br i1 %i.mc, label %bb.bh, label %obj_resurrect.exit

bb.bh:                                            ; preds = %rb_array_len.exit
  %i.md = or disjoint i32 %.0353, 1
  %i.me = sext i32 %i.md to i64                   ; 2 uses
  %i.mf = tail call i64 @rb_ary_entry(i64 noundef %i.lt, i64 noundef %i.me) #24
  %i.mg = tail call i64 @rb_fix2int(i64 noundef %i.mf) #20
  %sext = shl i64 %i.mg, 32
  %i.mh = ashr exact i64 %sext, 32
  %i.mi = add nsw i64 %i.mh, %i.hd                ; 2 uses
  %i.mj = tail call i64 (ptr, ...) @rb_sprintf(ptr noundef nonnull @.str.276, i64 noundef %i.mi) #20
  %i.mk = tail call i64 @rb_str_intern(i64 noundef %i.mj) #20 ; 2 uses
  %i.ml = tail call i32 @rb_st_insert(ptr noundef %i.n, i64 noundef %i.mi, i64 noundef %i.mk) #20 ; 0 uses
  tail call void @rb_ary_store(i64 noundef %i.lt, i64 noundef %i.me, i64 noundef %i.mk) #20
  %i.mm = add i32 %.0353, 2
  br label %bb.be, !llvm.loop !399

bb.bi:                                            ; preds = %insn_op_type.exit
  %i.mn = load i64, ptr %.1346740, align 8, !tbaa !19 ; 3 uses
  %i.mo = add i64 %i.mn, 4611686018427387904
  %or.cond.i = icmp sgt i64 %i.mo, -1
  br i1 %or.cond.i, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.mp = shl nsw i64 %i.mn, 1
  %i.mq = or disjoint i64 %i.mp, 1
  br label %obj_resurrect.exit

bb.bk:                                            ; preds = %bb.bi
  %i.mr = tail call i64 @rb_int2big(i64 noundef %i.mn) #20
  br label %obj_resurrect.exit

bb.bl:                                            ; preds = %insn_op_type.exit
  %i.ms = tail call i64 @rb_hash_new() #20        ; 5 uses
  %i.mt = load i64, ptr %.1346740, align 8, !tbaa !19
  %i.mu = inttoptr i64 %i.mt to ptr
  %i.mv = load ptr, ptr %i.mu, align 8, !tbaa !404
  %i.mw = ptrtoint ptr %i.mv to i64               ; 3 uses
  %i.mx = add i64 %i.mw, 4611686018427387904
  %or.cond.i500 = icmp sgt i64 %i.mx, -1
  br i1 %or.cond.i500, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.my = shl nsw i64 %i.mw, 1
  %i.mz = or disjoint i64 %i.my, 1
  br label %rb_long2num_inline.exit502

bb.bn:                                            ; preds = %bb.bl
  %i.na = tail call i64 @rb_int2big(i64 noundef %i.mw) #20
  br label %rb_long2num_inline.exit502

rb_long2num_inline.exit502:                       ; preds = %bb.bm, %bb.bn
  %.0.i501 = phi i64 [ %i.mz, %bb.bm ], [ %i.na, %bb.bn ]
  %.pr.i503 = load i64, ptr @iseq_data_to_ary.rbimpl_id.235, align 8, !tbaa !19 ; 2 uses
  %.not4.i504 = icmp eq i64 %.pr.i503, 0
  br i1 %.not4.i504, label %.lr.ph.i506, label %rbimpl_intern_const.exit508

.lr.ph.i506:                                      ; preds = %rb_long2num_inline.exit502, %.lr.ph.i506
  %i.nb = tail call i64 @rb_intern2(ptr noundef nonnull @.str.236, i64 noundef 8) #20 ; 3 uses
  store i64 %i.nb, ptr @iseq_data_to_ary.rbimpl_id.235, align 8, !tbaa !19
  %.not.i507 = icmp eq i64 %i.nb, 0
  br i1 %.not.i507, label %.lr.ph.i506, label %rbimpl_intern_const.exit508, !llvm.loop !1

rbimpl_intern_const.exit508:                      ; preds = %.lr.ph.i506, %rb_long2num_inline.exit502
  %.lcssa.i505 = phi i64 [ %.pr.i503, %rb_long2num_inline.exit502 ], [ %i.nb, %.lr.ph.i506 ]
  %i.nc = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i505) #20
  %i.nd = tail call i64 @rb_hash_aset(i64 noundef %i.ms, i64 noundef %i.nc, i64 noundef %.0.i501) #20 ; 0 uses
  %.pr.i509 = load i64, ptr @iseq_data_to_ary.rbimpl_id.237, align 8, !tbaa !19 ; 2 uses
  %.not4.i510 = icmp eq i64 %.pr.i509, 0
  br i1 %.not4.i510, label %.lr.ph.i512, label %rbimpl_intern_const.exit514

.lr.ph.i512:                                      ; preds = %rbimpl_intern_const.exit508, %.lr.ph.i512
  %i.ne = tail call i64 @rb_intern2(ptr noundef nonnull @.str.238, i64 noundef 4) #20 ; 3 uses
  store i64 %i.ne, ptr @iseq_data_to_ary.rbimpl_id.237, align 8, !tbaa !19
  %.not.i513 = icmp eq i64 %i.ne, 0
  br i1 %.not.i513, label %.lr.ph.i512, label %rbimpl_intern_const.exit514, !llvm.loop !1

rbimpl_intern_const.exit514:                      ; preds = %.lr.ph.i512, %rbimpl_intern_const.exit508
  %.lcssa.i511 = phi i64 [ %.pr.i509, %rbimpl_intern_const.exit508 ], [ %i.ne, %.lr.ph.i512 ]
  %i.nf = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i511) #20
  %i.ng = load i64, ptr %.1346740, align 8, !tbaa !19
  %i.nh = inttoptr i64 %i.ng to ptr
  %i.ni = getelementptr i8, ptr %i.nh, i64 8
  %i.nj = load i32, ptr %i.ni, align 8, !tbaa !232
  %i.nk = sext i32 %i.nj to i64
  %i.nl = shl nsw i64 %i.nk, 1
  %i.nm = or disjoint i64 %i.nl, 1
  %i.nn = tail call i64 @rb_hash_aset(i64 noundef %i.ms, i64 noundef %i.nf, i64 noundef %i.nm) #20 ; 0 uses
  %.pr.i515 = load i64, ptr @iseq_data_to_ary.rbimpl_id.239, align 8, !tbaa !19 ; 2 uses
  %.not4.i516 = icmp eq i64 %.pr.i515, 0
  br i1 %.not4.i516, label %.lr.ph.i518, label %rbimpl_intern_const.exit520

.lr.ph.i518:                                      ; preds = %rbimpl_intern_const.exit514, %.lr.ph.i518
  %i.no = tail call i64 @rb_intern2(ptr noundef nonnull @.str.240, i64 noundef 5) #20 ; 3 uses
  store i64 %i.no, ptr @iseq_data_to_ary.rbimpl_id.239, align 8, !tbaa !19
  %.not.i519 = icmp eq i64 %i.no, 0
  br i1 %.not.i519, label %.lr.ph.i518, label %rbimpl_intern_const.exit520, !llvm.loop !1

rbimpl_intern_const.exit520:                      ; preds = %.lr.ph.i518, %rbimpl_intern_const.exit514
  %.lcssa.i517 = phi i64 [ %.pr.i515, %rbimpl_intern_const.exit514 ], [ %i.no, %.lr.ph.i518 ]
  %i.np = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i517) #20
  %i.nq = load i64, ptr %.1346740, align 8, !tbaa !19
  %i.nr = inttoptr i64 %i.nq to ptr
  %i.ns = getelementptr i8, ptr %i.nr, i64 12
  %i.nt = load i32, ptr %i.ns, align 4, !tbaa !405
  %i.nu = sext i32 %i.nt to i64
  %i.nv = shl nsw i64 %i.nu, 1
  %i.nw = or disjoint i64 %i.nv, 1
  %i.nx = tail call i64 @rb_hash_aset(i64 noundef %i.ms, i64 noundef %i.np, i64 noundef %i.nw) #20 ; 0 uses
  %.pr.i521 = load i64, ptr @iseq_data_to_ary.rbimpl_id.241, align 8, !tbaa !19 ; 2 uses
  %.not4.i522 = icmp eq i64 %.pr.i521, 0
  br i1 %.not4.i522, label %.lr.ph.i524, label %rbimpl_intern_const.exit526

.lr.ph.i524:                                      ; preds = %rbimpl_intern_const.exit520, %.lr.ph.i524
  %i.ny = tail call i64 @rb_intern2(ptr noundef nonnull @.str.242, i64 noundef 4) #20 ; 3 uses
  store i64 %i.ny, ptr @iseq_data_to_ary.rbimpl_id.241, align 8, !tbaa !19
  %.not.i525 = icmp eq i64 %i.ny, 0
  br i1 %.not.i525, label %.lr.ph.i524, label %rbimpl_intern_const.exit526, !llvm.loop !1

rbimpl_intern_const.exit526:                      ; preds = %.lr.ph.i524, %rbimpl_intern_const.exit520
  %.lcssa.i523 = phi i64 [ %.pr.i521, %rbimpl_intern_const.exit520 ], [ %i.ny, %.lr.ph.i524 ]
  %i.nz = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i523) #20
  %i.oa = load i64, ptr %.1346740, align 8, !tbaa !19
  %i.ob = inttoptr i64 %i.oa to ptr
  %i.oc = getelementptr i8, ptr %i.ob, i64 16
  %i.od = load ptr, ptr %i.oc, align 8, !tbaa !231
  %i.oe = tail call i64 @rb_str_new_cstr(ptr noundef %i.od) #20
  %i.of = tail call i64 @rb_hash_aset(i64 noundef %i.ms, i64 noundef %i.nz, i64 noundef %i.oe) #20 ; 0 uses
  br label %obj_resurrect.exit

end_hunk_3
begin_hunk_4_@iseqw_s_compile_parser:bb.a
  br i1 %i.cp, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #20
  %i.cq = load i64, ptr %i.g, align 8, !tbaa !19
  %i.cr = call ptr @pm_iseq_new_with_opt(ptr noundef nonnull %i.bz, i64 noundef %i.bf, i64 noundef %i.cq, i64 noundef %spec.select, i32 noundef %i.bi, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %4, ptr noundef nonnull %i.j)
  call void @pm_parse_result_free(ptr noundef nonnull %5) #20
  %i.cs = load i32, ptr %i.j, align 4, !tbaa !17  ; 2 uses
  %.not.i42 = icmp eq i32 %i.cs, 0
  br i1 %.not.i42, label %pm_iseq_compile_with_option.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @rb_jump_tag(i32 noundef %i.cs) #22
  unreachable

bb.z:                                             ; preds = %bb.w
  call void @pm_parse_result_free(ptr noundef nonnull %5) #20
  call void @rb_exc_raise(i64 noundef %.0.i) #22
  unreachable

pm_iseq_compile_with_option.exit:                 ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.ai

bb.aa:                                            ; preds = %Check_Type.exit38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %i.t, ptr %i.b, align 8, !tbaa !19
  store i64 %.134, ptr %i.c, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.ct = tail call i64 @rb_fstring_new(ptr noundef nonnull @.str.300, i64 noundef 10) #20 ; 3 uses
  call fastcc void @make_compile_option(ptr noundef %3, i64 noundef %i.al)
  br i1 %i.be, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.cu = tail call i64 @rb_fix2int(i64 noundef %spec.store.select) #20
  br label %rb_num2int_inline.exit.i43

bb.ac:                                            ; preds = %bb.aa
  %i.cv = tail call i64 @rb_num2int(i64 noundef %spec.store.select) #20
  br label %rb_num2int_inline.exit.i43

rb_num2int_inline.exit.i43:                       ; preds = %bb.ac, %bb.ab
  %.0.i23.i = phi i64 [ %i.cu, %bb.ab ], [ %i.cv, %bb.ac ]
  %i.cw = trunc i64 %.0.i23.i to i32              ; 2 uses
  %i.cx = call ptr @rb_string_value_cstr(ptr noundef nonnull %i.c) #20 ; 0 uses
  %i.cy = icmp eq i64 %i.t, 0
  %i.cz = and i64 %i.t, 7
  %i.da = icmp ne i64 %i.cz, 0
  %i.db = or i1 %i.cy, %i.da
  br i1 %i.db, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i45, label %rbimpl_RB_TYPE_P_fastpath.exit.i44

rbimpl_RB_TYPE_P_fastpath.exit.i44:               ; preds = %rb_num2int_inline.exit.i43
  %i.dc = inttoptr i64 %i.t to ptr
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !80
  %i.de = and i64 %i.dd, 31
  %i.df = icmp eq i64 %i.de, 11
  br i1 %i.df, label %bb.ad, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i45

rbimpl_RB_TYPE_P_fastpath.exit.thread.i45:        ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i44, %rb_num2int_inline.exit.i43
  %i.dg = call i64 @rb_string_value(ptr noundef nonnull %i.b) #20 ; 0 uses
  br label %bb.ad

bb.ad:                                            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i45, %rbimpl_RB_TYPE_P_fastpath.exit.i44
  %.0.i46 = phi ptr [ @rb_parser_compile_string_path, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i45 ], [ @rb_parser_compile_file_path, %rbimpl_RB_TYPE_P_fastpath.exit.i44 ]
  %i.dh = call i64 @rb_parser_new() #20           ; 3 uses
  %i.di = call ptr @rb_iseq_new_with_opt(i64 noundef 4, i64 noundef %i.ct, i64 noundef %i.ct, i64 noundef 4, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @COMPILE_OPTION_DEFAULT, i64 noundef 4) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  %i.dj = ptrtoint ptr %i.di to i64
  store i64 %i.dj, ptr %i.d, align 8, !tbaa !19
  %i.dk = call i64 @rb_parser_set_context(i64 noundef %i.dh, ptr noundef %i.di, i32 noundef 0) #20 ; 0 uses
  %i.dl = load i8, ptr @ruby_vm_keep_script_lines, align 1, !tbaa !264, !range !121, !noundef !122
  %i.dm = trunc nuw i8 %i.dl to i1
  br i1 %i.dm, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  call void @rb_parser_set_script_lines(i64 noundef %i.dh) #20
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20
  store ptr %i.d, ptr %i.e, align 8, !tbaa !166
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.e) #20, !srcloc !417
  %i.dn = load ptr, ptr %i.e, align 8, !tbaa !166
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  %i.do = load volatile i64, ptr %i.dn, align 8, !tbaa !19 ; 0 uses
  %i.dp = load i64, ptr %i.c, align 8, !tbaa !19
  %i.dq = load i64, ptr %i.b, align 8, !tbaa !19
  %i.dr = call i64 %.0.i46(i64 noundef %i.dh, i64 noundef %i.dp, i64 noundef %i.dq, i32 noundef %i.cw) #20, !callees !418, !inline_history !414 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  %i.ds = call ptr @rb_ruby_ast_data_get(i64 noundef %i.dr) #20 ; 4 uses
  %.not.i47 = icmp eq ptr %i.ds, null
  br i1 %.not.i47, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dt = getelementptr i8, ptr %i.ds, i64 8
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !265
  %.not22.i = icmp eq ptr %i.du, null
  br i1 %.not22.i, label %bb.ah, label %rb_iseq_compile_with_option.exit

bb.ah:                                            ; preds = %bb.ag, %bb.af
  call void @rb_ast_dispose(ptr noundef %i.ds) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.dv = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !132
  store volatile ptr %i.dw, ptr %i.a, align 8, !tbaa !132
  %.0..0..0..0..0..0..0..0..i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !132
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.dx = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..i.i, i64 128
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !266
  call void @rb_exc_raise(i64 noundef %i.dy) #22
  unreachable

rb_iseq_compile_with_option.exit:                 ; preds = %bb.ag
  %i.dz = load i64, ptr %i.c, align 8, !tbaa !19
  %i.ea = call ptr @rb_iseq_new_with_opt(i64 noundef %i.dr, i64 noundef %i.ct, i64 noundef %i.dz, i64 noundef %spec.select, i32 noundef %i.cw, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %3, i64 noundef 4)
  call void @rb_ast_dispose(ptr noundef nonnull %i.ds) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.ai

bb.ai:                                            ; preds = %rb_iseq_compile_with_option.exit, %pm_iseq_compile_with_option.exit
  %.0 = phi ptr [ %i.cr, %pm_iseq_compile_with_option.exit ], [ %i.ea, %rb_iseq_compile_with_option.exit ]
  %i.eb = call fastcc i64 @iseqw_new(ptr noundef %.0)
  ret i64 %i.eb
}

declare i32 @rb_ruby_default_parser() local_unnamed_addr #2

; Function Attrs: cold noreturn
declare void @rb_unexpected_type(i64 noundef, i32 noundef) local_unnamed_addr #11

declare ptr @rb_string_value_cstr(ptr noundef) local_unnamed_addr #2

declare i64 @rb_io_path(i64 noundef) local_unnamed_addr #2

declare i64 @rb_string_value(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #19

declare void @pm_options_line_set(ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i1 @pm_options_scopes_init(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @pm_options_frozen_string_literal_set(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare i64 @pm_load_parse_file(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare i64 @pm_parse_string(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare void @pm_parse_result_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @rb_jump_tag(i32 noundef) local_unnamed_addr #15

declare i64 @rb_parser_compile_file_path(i64 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare i64 @rb_parser_compile_string_path(i64 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare i64 @rb_parser_new() local_unnamed_addr #2

declare i64 @rb_parser_set_context(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @rb_parser_set_script_lines(i64 noundef) local_unnamed_addr #2

declare void @rb_ast_dispose(ptr noundef) local_unnamed_addr #2

declare i64 @rb_get_path(i64 noundef) local_unnamed_addr #2

declare i64 @rb_vm_push_frame_fname(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i64 @rb_realpath_internal(i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare void @rb_vm_pop_frame(ptr noundef) local_unnamed_addr #2

declare i64 @rb_file_open_str(i64 noundef, ptr noundef) local_unnamed_addr #2

declare i64 @rb_parser_load_file(i64 noundef, i64 noundef) local_unnamed_addr #2

declare i64 @rb_io_close(i64 noundef) local_unnamed_addr #2

declare i64 @rb_hash_new_with_size(i64 noundef) local_unnamed_addr #2

declare i32 @rb_frame_info_p(i64 noundef) local_unnamed_addr #2

declare ptr @rb_get_iseq_from_frame_info(i64 noundef) local_unnamed_addr #2

declare i64 @rb_obj_is_proc(i64 noundef) local_unnamed_addr #2

declare i64 @rb_obj_is_method(i64 noundef) local_unnamed_addr #2

declare ptr @rb_method_iseq(i64 noundef) local_unnamed_addr #2

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint nounwind sspstrong memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #20 = { nounwind }
attributes #21 = { nounwind allocsize(0,1) }
attributes #22 = { noreturn nounwind }
attributes #23 = { cold noreturn nounwind }
attributes #24 = { nounwind willreturn memory(read) }
attributes #25 = { nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #26 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13}
!llvm.errno.tbaa = !{!17}

!0 = distinct !{!0, !78}
!1 = distinct !{!1, !78}
!2 = distinct !{!2, !78}
!3 = distinct !{!3, !78}
!4 = distinct !{!4, !78}
!5 = distinct !{!5, !78}
!6 = distinct !{!6, !78}
!7 = !{i32 7, !"Dwarf Version", i32 5}
!8 = !{i32 2, !"Debug Info Version", i32 3}
!9 = !{i32 8, !"PIC Level", i32 2}
!10 = !{i32 7, !"PIE Level", i32 2}
!11 = !{i32 7, !"uwtable", i32 2}
!12 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!13 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!14 = !{!"Simple C/C++ TBAA"}
!15 = !{!"omnipotent char", !14, i64 0}
!16 = !{!"int", !15, i64 0}
!17 = !{!16, !16, i64 0}
!18 = !{!"long", !15, i64 0}
!19 = !{!18, !18, i64 0}
!20 = !{!"any pointer", !15, i64 0}
!21 = !{!"p1 _ZTS20rb_event_hook_struct", !20, i64 0}
!22 = !{!"_Bool", !15, i64 0}
!23 = !{!"rb_hook_list_struct", !21, i64 0, !16, i64 8, !16, i64 12, !16, i64 16, !22, i64 20}
!24 = !{!23, !16, i64 16}
!25 = !{!"p1 _ZTS21rb_iseq_constant_body", !20, i64 0}
!26 = !{!"rb_iseq_struct", !18, i64 0, !18, i64 8, !25, i64 16, !15, i64 24}
!27 = !{!26, !25, i64 16}
!28 = !{!"p1 long", !20, i64 0}
!29 = !{!"", !16, i64 0, !16, i64 0, !16, i64 0, !16, i64 0, !16, i64 0, !16, i64 0, !16, i64 0, !16, i64 0, !16, i64 1, !16, i64 1, !16, i64 1, !16, i64 1, !16, i64 1, !16, i64 1}
!30 = !{!"p1 _ZTS21rb_iseq_param_keyword", !20, i64 0}
!31 = !{!"rb_iseq_parameters", !29, i64 0, !16, i64 4, !16, i64 8, !16, i64 12, !16, i64 16, !16, i64 20, !16, i64 24, !16, i64 28, !28, i64 32, !30, i64 40}
!32 = !{!"rb_code_position_struct", !16, i64 0, !16, i64 4}
!33 = !{!"rb_code_location_struct", !32, i64 0, !32, i64 8}
!34 = !{!"rb_iseq_location_struct", !18, i64 0, !18, i64 8, !18, i64 16, !16, i64 24, !16, i64 28, !33, i64 32}
!35 = !{!"p1 _ZTS20iseq_insn_info_entry", !20, i64 0}
!36 = !{!"p1 int", !20, i64 0}
!37 = !{!"p1 _ZTS16succ_index_table", !20, i64 0}
!38 = !{!"iseq_insn_info", !35, i64 0, !36, i64 8, !16, i64 16, !37, i64 24}
!39 = !{!"p1 _ZTS16iseq_catch_table", !20, i64 0}
!40 = !{!"p1 _ZTS14rb_iseq_struct", !20, i64 0}
!41 = !{!"p1 _ZTS25iseq_inline_storage_entry", !20, i64 0}
!42 = !{!"p1 _ZTS12rb_call_data", !20, i64 0}
!43 = !{!"", !18, i64 0, !18, i64 8, !18, i64 16, !18, i64 24, !28, i64 32}
!44 = !{!"p1 _ZTS11rb_id_table", !20, i64 0}
!45 = !{!"rb_iseq_constant_body", !16, i64 0, !16, i64 4, !28, i64 8, !31, i64 16, !34, i64 64, !38, i64 112, !28, i64 144, !20, i64 152, !39, i64 160, !40, i64 168, !40, i64 176, !41, i64 184, !42, i64 192, !43, i64 200, !16, i64 240, !16, i64 244, !16, i64 248, !16, i64 252, !16, i64 256, !16, i64 260, !16, i64 264, !16, i64 268, !22, i64 272, !15, i64 280, !44, i64 288, !40, i64 296, !20, i64 304, !18, i64 312, !20, i64 320, !18, i64 328, !20, i64 336, !18, i64 344, !20, i64 352}
!46 = !{!45, !41, i64 184}
!47 = !{!45, !16, i64 244}
!48 = !{!45, !16, i64 248}
!49 = !{!45, !16, i64 256}
!50 = !{!45, !16, i64 252}
!51 = !{!"p1 _ZTS32iseq_inline_constant_cache_entry", !20, i64 0}
!52 = !{!"iseq_inline_constant_cache", !51, i64 0, !28, i64 8}
!53 = !{!52, !28, i64 8}
!54 = !{!"p1 _ZTS12rb_vm_struct", !20, i64 0}
!55 = !{!54, !54, i64 0}
!56 = !{!"p1 _ZTS14ccan_list_node", !20, i64 0}
!57 = !{!"ccan_list_node", !56, i64 0, !56, i64 8}
!58 = !{!"ccan_list_head", !57, i64 0}
!59 = !{!"p1 _ZTS16rb_ractor_struct", !20, i64 0}
!60 = !{!"p1 _ZTS16rb_thread_struct", !20, i64 0}
!61 = !{!"", !15, i64 0, !59, i64 40, !16, i64 48, !15, i64 56, !22, i64 104}
!62 = !{!"", !15, i64 0, !59, i64 40, !22, i64 48, !15, i64 56, !16, i64 104, !16, i64 108, !16, i64 112, !16, i64 116, !58, i64 120, !16, i64 136, !58, i64 144, !58, i64 160, !58, i64 176, !22, i64 192, !15, i64 200, !15, i64 248, !22, i64 296, !16, i64 300, !16, i64 304, !59, i64 312, !16, i64 320}
!63 = !{!"", !58, i64 0, !16, i64 16, !16, i64 20, !59, i64 24, !60, i64 32, !61, i64 40, !62, i64 152}
!64 = !{!"long long", !15, i64 0}
!65 = !{!"p1 _ZTS18global_object_list", !20, i64 0}
!66 = !{!"p1 _ZTS13rb_box_struct", !20, i64 0}
!67 = !{!"p1 _ZTS8st_table", !20, i64 0}
!68 = !{!"", !15, i64 0}
!69 = !{!"p1 _ZTS22rb_postponed_job_queue", !20, i64 0}
!70 = !{!"p1 _ZTS11rb_objspace", !20, i64 0}
!71 = !{!"p1 _ZTS24gc_mark_func_data_struct", !20, i64 0}
!72 = !{!"", !70, i64 0, !71, i64 8}
!73 = !{!"p1 _ZTS15rb_at_exit_list", !20, i64 0}
!74 = !{!"p1 _ZTS19rb_builtin_function", !20, i64 0}
!75 = !{!"p1 _ZTS9set_table", !20, i64 0}
!76 = !{!"", !18, i64 0, !18, i64 8, !18, i64 16, !18, i64 24}
!77 = !{!"rb_vm_struct", !18, i64 0, !63, i64 8, !20, i64 488, !64, i64 496, !16, i64 504, !16, i64 508, !16, i64 508, !16, i64 508, !16, i64 508, !18, i64 512, !65, i64 520, !15, i64 528, !66, i64 568, !66, i64 576, !67, i64 584, !68, i64 592, !23, i64 1112, !69, i64 1136, !16, i64 1144, !58, i64 1152, !15, i64 1168, !18, i64 1208, !18, i64 1216, !18, i64 1224, !18, i64 1232, !16, i64 1240, !72, i64 1248, !73, i64 1264, !74, i64 1272, !67, i64 1280, !44, i64 1288, !67, i64 1296, !75, i64 1304, !75, i64 1312, !44, i64 1320, !18, i64 1328, !15, i64 1336, !76, i64 9520}
!78 = !{!"llvm.loop.mustprogress"}
!79 = !{!"RBasic", !18, i64 0, !18, i64 8}
!80 = !{!79, !18, i64 0}
!81 = !{!45, !28, i64 8}
!82 = !{!45, !35, i64 112}
!83 = !{!45, !36, i64 120}
!84 = !{!45, !37, i64 136}
!85 = !{!45, !42, i64 192}
!86 = !{!45, !39, i64 160}
!87 = !{!45, !28, i64 48}
!88 = !{!45, !16, i64 4}
!89 = !{!15, !15, i64 0}
!90 = !{!45, !28, i64 232}
!91 = !{!45, !30, i64 56}
!92 = !{!"rb_iseq_param_keyword", !16, i64 0, !16, i64 4, !16, i64 8, !16, i64 12, !28, i64 16, !28, i64 24}
!93 = !{!92, !28, i64 16}
!94 = !{!45, !28, i64 144}
!95 = !{!92, !16, i64 8}
!96 = !{!92, !16, i64 0}
!97 = !{!92, !28, i64 24}
!98 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!99 = !{!26, !18, i64 0}
!100 = !{!"p1 _ZTS15iseq_label_data", !20, i64 0}
!101 = !{!"p1 _ZTS35iseq_compile_data_ensure_node_stack", !20, i64 0}
!102 = !{!"p1 _ZTS25iseq_compile_data_storage", !20, i64 0}
!103 = !{!"", !102, i64 0, !102, i64 8}
!104 = !{!"p1 _ZTS24rb_compile_option_struct", !20, i64 0}
!105 = !{!"p1 _ZTS5RNode", !20, i64 0}
!106 = !{!"iseq_compile_data", !18, i64 0, !18, i64 8, !16, i64 16, !28, i64 24, !22, i64 32, !15, i64 40, !100, i64 48, !100, i64 56, !100, i64 64, !40, i64 72, !101, i64 80, !103, i64 88, !103, i64 104, !22, i64 120, !22, i64 121, !16, i64 124, !16, i64 128, !16, i64 132, !16, i64 136, !16, i64 140, !16, i64 144, !16, i64 148, !104, i64 152, !44, i64 160, !74, i64 168, !105, i64 176, !22, i64 184}
!107 = !{!106, !102, i64 88}
!108 = !{!102, !102, i64 0}
!109 = !{!106, !102, i64 104}
!110 = !{!106, !44, i64 160}
!111 = !{!45, !40, i64 176}
!112 = !{!45, !40, i64 168}
!113 = !{!45, !16, i64 260}
!114 = !{!"p1 _ZTS11rb_callinfo", !20, i64 0}
!115 = !{!"p1 _ZTS12rb_callcache", !20, i64 0}
!116 = !{!"rb_call_data", !114, i64 0, !115, i64 8}
!117 = !{!116, !114, i64 0}
!118 = !{!92, !16, i64 4}
!119 = !{!"iseq_catch_table_entry", !16, i64 0, !40, i64 8, !16, i64 16, !16, i64 20, !16, i64 24, !16, i64 28}
!120 = !{!119, !40, i64 8}
!121 = !{i8 0, i8 2}
!122 = !{}
!123 = !{!45, !16, i64 128}
!124 = !{!45, !16, i64 240}
!125 = !{!45, !16, i64 28}
!126 = !{!45, !16, i64 0}
!127 = !{!"succ_dict_block", !16, i64 0, !18, i64 8, !15, i64 16}
!128 = !{!127, !16, i64 0}
!129 = !{!127, !18, i64 8}
!130 = !{!59, !59, i64 0}
!131 = !{!"p1 _ZTS27rb_execution_context_struct", !20, i64 0}
!132 = !{!131, !131, i64 0}
!133 = !{!"p1 _ZTS23rb_control_frame_struct", !20, i64 0}
!134 = !{!"p1 _ZTS9rb_vm_tag", !20, i64 0}
!135 = !{!"p1 _ZTS15rb_fiber_struct", !20, i64 0}
!136 = !{!"p1 _ZTS19rb_trace_arg_struct", !20, i64 0}
!137 = !{!"", !18, i64 0, !18, i64 8}
!138 = !{!"", !28, i64 0, !28, i64 8, !18, i64 16, !15, i64 24}
!139 = !{!"rb_execution_context_struct", !28, i64 0, !18, i64 8, !133, i64 16, !134, i64 24, !16, i64 32, !16, i64 36, !135, i64 40, !60, i64 48, !64, i64 56, !64, i64 64, !44, i64 72, !18, i64 80, !18, i64 88, !18, i64 96, !28, i64 104, !18, i64 112, !136, i64 120, !18, i64 128, !18, i64 136, !15, i64 144, !16, i64 145, !18, i64 152, !137, i64 160, !138, i64 176}
!140 = !{!139, !60, i64 48}
!141 = !{!"p1 _ZTS16rb_native_thread", !20, i64 0}
!142 = !{!"", !57, i64 0, !57, i64 16, !57, i64 32, !57, i64 48, !57, i64 64}
!143 = !{!"", !18, i64 0, !16, i64 8, !16, i64 12, !16, i64 16}
!144 = !{!"rb_thread_sched_waiting", !16, i64 0, !143, i64 8, !57, i64 32}
!145 = !{!"p1 _ZTS17coroutine_context", !20, i64 0}
!146 = !{!"rb_thread_sched_item", !142, i64 0, !144, i64 80, !16, i64 128, !22, i64 132, !22, i64 133, !20, i64 136, !145, i64 144}
!147 = !{!"p1 _ZTS15rb_calling_info", !20, i64 0}
!148 = !{!"rb_unblock_callback", !20, i64 0, !20, i64 8}
!149 = !{!"p1 _ZTS15rb_mutex_struct", !20, i64 0}
!150 = !{!"p1 _ZTS15rb_waiting_list", !20, i64 0}
!151 = !{!"any p2 pointer", !20, i64 0}
!152 = !{!"rb_ext_config", !22, i64 0}
!153 = !{!"rb_thread_struct", !57, i64 0, !18, i64 16, !59, i64 24, !54, i64 32, !141, i64 40, !131, i64 48, !146, i64 56, !22, i64 208, !16, i64 212, !18, i64 216, !147, i64 224, !18, i64 232, !18, i64 240, !16, i64 248, !16, i64 248, !16, i64 248, !16, i64 248, !16, i64 248, !16, i64 248, !15, i64 249, !16, i64 252, !20, i64 256, !18, i64 264, !18, i64 272, !18, i64 280, !18, i64 288, !15, i64 296, !148, i64 336, !18, i64 352, !149, i64 360, !58, i64 368, !150, i64 384, !15, i64 392, !16, i64 416, !135, i64 424, !18, i64 432, !16, i64 440, !18, i64 448, !151, i64 456, !152, i64 464}
!154 = !{!153, !59, i64 24}
!155 = !{!23, !16, i64 8}
!156 = !{!"iseq_insn_info_entry", !16, i64 0, !16, i64 4, !16, i64 8}
!157 = !{!156, !16, i64 8}
!158 = !{!67, !67, i64 0}
!159 = !{!"insn_data_struct", !16, i64 0, !16, i64 4, !20, i64 8, !20, i64 16, !16, i64 24, !20, i64 32}
!160 = !{!159, !20, i64 16}
!161 = !{!20, !20, i64 0}
!162 = !{!159, !16, i64 4}
!163 = !{!"p1 _ZTS13rb_parser_ary", !20, i64 0}
!164 = !{!"rb_ast_body_struct", !105, i64 0, !163, i64 8, !16, i64 16, !16, i64 20, !16, i64 20}
!165 = !{!45, !18, i64 208}
!166 = !{!28, !28, i64 0}
!167 = !{!"p1 _ZTS18node_buffer_struct", !20, i64 0}
end_hunk_4
