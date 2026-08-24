Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/iseq?download=true
inline.NumInlined: 615
inline.NumDeleted: 145
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 14
begin_hunk_0_@rb_iseq_insns_info_encode_positions:bb.a
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
  %.372.i = phi i32 [ %.053.lcssa.i, %.lr.ph.i ], [ %.6.i.1, %bb.ah ] ; 2 uses
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
  %.566.i = phi i32 [ %.469.i, %bb.y ], [ %.6.i.1, %bb.af ] ; 5 uses
  %i.dq = icmp slt i32 %.566.i, %i.d
  br i1 %i.dq, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.dr = sext i32 %.566.i to i64
  %i.ds = getelementptr [4 x i8], ptr %i.h, i64 %i.dr
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !7
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
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !7
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
  %.051.i = phi i32 [ -1, %.preheader45.preheader.i ], [ %i.bn, %bb.s ]
  %.04049.i = phi ptr [ %i.n, %.preheader45.preheader.i ], [ %.2.8.i, %bb.s ] ; 3 uses
  %i.p = getelementptr [8 x i8], ptr %i.f, i64 %indvars.iv.i
  %i.q = load i64, ptr %i.p, align 8, !tbaa !11   ; 6 uses
  %i.r = mul nuw nsw i64 %indvars.iv.i, 9         ; 9 uses
  %i.s = trunc i64 %i.q to i32                    ; 4 uses
  %i.t = and i32 %i.s, 127                        ; 2 uses
  %.not42.i = icmp eq i32 %.051.i, %i.t
  br i1 %.not42.i, label %bb.c, label %bb.b

.preheader44.i:                                   ; preds = %bb.s, %bb.a
  %.040.lcssa.i = phi ptr [ %i.n, %bb.a ], [ %.2.8.i, %bb.s ]
  %i.u = add i32 %i.d, -55
  %i.v = icmp ult i32 %i.u, 2147483136
  br i1 %i.v, label %.preheader43.preheader.i, label %succ_index_table_invert.exit

.preheader43.preheader.i:                         ; preds = %.preheader44.i
  %smax.i = tail call i32 @llvm.smax.i32(i32 %i.l, i32 1)
  %wide.trip.count71.i = zext nneg i32 %smax.i to i64
  br label %.preheader43.i

bb.b:                                             ; preds = %.preheader45.i
  %i.w = getelementptr i8, ptr %.04049.i, i64 4
  %i.x = trunc nuw i64 %i.r to i32
  store i32 %i.x, ptr %.04049.i, align 4, !tbaa !7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.preheader45.i
  %.2.i = phi ptr [ %i.w, %bb.b ], [ %.04049.i, %.preheader45.i ] ; 3 uses
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
  %.356.i = phi ptr [ %.040.lcssa.i, %.preheader43.preheader.i ], [ %.6.7.i.1, %bb.bh ]
  %i.br = getelementptr [80 x i8], ptr %i.f, i64 %indvars.iv68.i ; 8 uses
  %i.bs = getelementptr i8, ptr %i.br, i64 64
  %i.bt = shl nuw nsw i64 %indvars.iv68.i, 9      ; 8 uses
  %i.bu = or disjoint i64 %i.bt, 54               ; 2 uses
  %i.bv = load i64, ptr %i.bs, align 8, !tbaa !11 ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.x, %.preheader43.i
  %indvars.iv60.i = phi i64 [ 0, %.preheader43.i ], [ %indvars.iv.next61.i.1, %bb.x ] ; 5 uses
  %.552.i = phi ptr [ %.356.i, %.preheader43.i ], [ %.6.i.1, %bb.x ] ; 3 uses
  %i.bw = shl nuw i64 1, %indvars.iv60.i
  %i.bx = and i64 %i.bw, %i.bv
  %.not.i = icmp eq i64 %i.bx, 0
  br i1 %.not.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.by = add nuw nsw i64 %i.bu, %indvars.iv60.i
  %i.bz = getelementptr i8, ptr %.552.i, i64 4
  %i.ca = trunc nuw nsw i64 %i.by to i32
  store i32 %i.ca, ptr %.552.i, align 4, !tbaa !7
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.6.i = phi ptr [ %i.bz, %bb.u ], [ %.552.i, %bb.t ] ; 3 uses
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
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.6.i.1 = phi ptr [ %i.ce, %bb.w ], [ %.6.i, %bb.v ] ; 2 uses
  %indvars.iv.next61.i.1 = add nuw nsw i64 %indvars.iv60.i, 2 ; 2 uses
  %exitcond63.not.i.1 = icmp eq i64 %indvars.iv.next61.i.1, 64
  br i1 %exitcond63.not.i.1, label %.preheader.1.i, label %bb.t, !llvm.loop !169

.preheader.1.i:                                   ; preds = %bb.x
  %i.cg = getelementptr i8, ptr %i.br, i64 72
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !11 ; 2 uses
  %i.ci = or disjoint i64 %i.bt, 118              ; 2 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.ac, %.preheader.1.i
  %indvars.iv60.1.i = phi i64 [ 0, %.preheader.1.i ], [ %indvars.iv.next61.1.i.1, %bb.ac ] ; 5 uses
  %.552.1.i = phi ptr [ %.6.i.1, %.preheader.1.i ], [ %.6.1.i.1, %bb.ac ] ; 3 uses
  %i.cj = shl nuw i64 1, %indvars.iv60.1.i
  %i.ck = and i64 %i.cj, %i.ch
  %.not.1.i = icmp eq i64 %i.ck, 0
  br i1 %.not.1.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cl = add nuw nsw i64 %i.ci, %indvars.iv60.1.i
  %i.cm = getelementptr i8, ptr %.552.1.i, i64 4
  %i.cn = trunc nuw nsw i64 %i.cl to i32
  store i32 %i.cn, ptr %.552.1.i, align 4, !tbaa !7
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.6.1.i = phi ptr [ %i.cm, %bb.z ], [ %.552.1.i, %bb.y ] ; 3 uses
end_hunk_0
begin_hunk_1_@iseqw_s_compile_parser:bb.a
  br i1 %i.cp, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #20
  %i.cq = load i64, ptr %i.g, align 8, !tbaa !11
  %i.cr = call ptr @pm_iseq_new_with_opt(ptr noundef nonnull %i.bz, i64 noundef %i.bf, i64 noundef %i.cq, i64 noundef %spec.select, i32 noundef %i.bi, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %4, ptr noundef nonnull %i.j)
  call void @pm_parse_result_free(ptr noundef nonnull %5) #20
  %i.cs = load i32, ptr %i.j, align 4, !tbaa !7   ; 2 uses
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
  store i64 %i.t, ptr %i.b, align 8, !tbaa !11
  store i64 %.134, ptr %i.c, align 8, !tbaa !11
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
  store i64 %i.dj, ptr %i.d, align 8, !tbaa !11
  %i.dk = call i64 @rb_parser_set_context(i64 noundef %i.dh, ptr noundef %i.di, i32 noundef 0) #20 ; 0 uses
  %i.dl = load i8, ptr @ruby_vm_keep_script_lines, align 1, !tbaa !378, !range !151, !noundef !152
  %i.dm = trunc nuw i8 %i.dl to i1
  br i1 %i.dm, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  call void @rb_parser_set_script_lines(i64 noundef %i.dh) #20
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20
  store ptr %i.d, ptr %i.e, align 8, !tbaa !217
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.e) #20, !srcloc !416
  %i.dn = load ptr, ptr %i.e, align 8, !tbaa !217
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  %i.do = load volatile i64, ptr %i.dn, align 8, !tbaa !11 ; 0 uses
  %i.dp = load i64, ptr %i.c, align 8, !tbaa !11
  %i.dq = load i64, ptr %i.b, align 8, !tbaa !11
  %i.dr = call i64 %.0.i46(i64 noundef %i.dh, i64 noundef %i.dp, i64 noundef %i.dq, i32 noundef %i.cw) #20, !callees !417, !inline_history !418 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  %i.ds = call ptr @rb_ruby_ast_data_get(i64 noundef %i.dr) #20 ; 4 uses
  %.not.i47 = icmp eq ptr %i.ds, null
  br i1 %.not.i47, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dt = getelementptr i8, ptr %i.ds, i64 8
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !382
  %.not22.i = icmp eq ptr %i.du, null
  br i1 %.not22.i, label %bb.ah, label %rb_iseq_compile_with_option.exit

bb.ah:                                            ; preds = %bb.ag, %bb.af
  call void @rb_ast_dispose(ptr noundef %i.ds) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.dv = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !172
  store volatile ptr %i.dw, ptr %i.a, align 8, !tbaa !172
  %.0..0..0..0..0..0..0..0..i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !172
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.dx = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..i.i, i64 128
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !383
  call void @rb_exc_raise(i64 noundef %i.dy) #22
  unreachable

rb_iseq_compile_with_option.exit:                 ; preds = %bb.ag
  %i.dz = load i64, ptr %i.c, align 8, !tbaa !11
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

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #17

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

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !12, i64 0}
!12 = !{!"long", !9, i64 0}
!13 = !{!14, !8, i64 16}
!14 = !{!"rb_hook_list_struct", !15, i64 0, !8, i64 8, !8, i64 12, !8, i64 16, !17, i64 20}
!15 = !{!"p1 _ZTS20rb_event_hook_struct", !16, i64 0}
!16 = !{!"any pointer", !9, i64 0}
!17 = !{!"_Bool", !9, i64 0}
!18 = !{!19, !20, i64 16}
!19 = !{!"rb_iseq_struct", !12, i64 0, !12, i64 8, !20, i64 16, !9, i64 24}
!20 = !{!"p1 _ZTS21rb_iseq_constant_body", !16, i64 0}
!21 = !{!22, !36, i64 184}
!22 = !{!"rb_iseq_constant_body", !8, i64 0, !8, i64 4, !23, i64 8, !24, i64 16, !27, i64 64, !30, i64 112, !23, i64 144, !16, i64 152, !34, i64 160, !35, i64 168, !35, i64 176, !36, i64 184, !37, i64 192, !38, i64 200, !8, i64 240, !8, i64 244, !8, i64 248, !8, i64 252, !8, i64 256, !8, i64 260, !8, i64 264, !8, i64 268, !17, i64 272, !9, i64 280, !39, i64 288, !35, i64 296, !16, i64 304, !12, i64 312, !16, i64 320, !12, i64 328, !16, i64 336, !12, i64 344, !16, i64 352}
!23 = !{!"p1 long", !16, i64 0}
!24 = !{!"rb_iseq_parameters", !25, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !23, i64 32, !26, i64 40}
!25 = !{!"", !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 1, !8, i64 1, !8, i64 1, !8, i64 1, !8, i64 1, !8, i64 1}
!26 = !{!"p1 _ZTS21rb_iseq_param_keyword", !16, i64 0}
!27 = !{!"rb_iseq_location_struct", !12, i64 0, !12, i64 8, !12, i64 16, !8, i64 24, !8, i64 28, !28, i64 32}
!28 = !{!"rb_code_location_struct", !29, i64 0, !29, i64 8}
!29 = !{!"rb_code_position_struct", !8, i64 0, !8, i64 4}
!30 = !{!"iseq_insn_info", !31, i64 0, !32, i64 8, !8, i64 16, !33, i64 24}
!31 = !{!"p1 _ZTS20iseq_insn_info_entry", !16, i64 0}
!32 = !{!"p1 int", !16, i64 0}
!33 = !{!"p1 _ZTS16succ_index_table", !16, i64 0}
!34 = !{!"p1 _ZTS16iseq_catch_table", !16, i64 0}
!35 = !{!"p1 _ZTS14rb_iseq_struct", !16, i64 0}
!36 = !{!"p1 _ZTS25iseq_inline_storage_entry", !16, i64 0}
!37 = !{!"p1 _ZTS12rb_call_data", !16, i64 0}
!38 = !{!"", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !23, i64 32}
!39 = !{!"p1 _ZTS11rb_id_table", !16, i64 0}
!40 = !{!22, !8, i64 244}
!41 = !{!22, !8, i64 248}
!42 = !{!22, !8, i64 256}
!43 = !{!22, !8, i64 252}
!44 = !{!45, !23, i64 8}
!45 = !{!"iseq_inline_constant_cache", !46, i64 0, !23, i64 8}
!46 = !{!"p1 _ZTS32iseq_inline_constant_cache_entry", !16, i64 0}
!47 = !{!48, !48, i64 0}
!48 = !{!"p1 _ZTS12rb_vm_struct", !16, i64 0}
!49 = !{!50, !39, i64 1320}
!50 = !{!"rb_vm_struct", !12, i64 0, !51, i64 8, !16, i64 488, !59, i64 496, !8, i64 504, !8, i64 508, !8, i64 508, !8, i64 508, !8, i64 508, !12, i64 512, !60, i64 520, !9, i64 528, !61, i64 568, !61, i64 576, !62, i64 584, !63, i64 592, !14, i64 1112, !64, i64 1136, !8, i64 1144, !52, i64 1152, !9, i64 1168, !12, i64 1208, !12, i64 1216, !12, i64 1224, !12, i64 1232, !8, i64 1240, !65, i64 1248, !68, i64 1264, !69, i64 1272, !62, i64 1280, !39, i64 1288, !62, i64 1296, !70, i64 1304, !70, i64 1312, !39, i64 1320, !12, i64 1328, !9, i64 1336, !71, i64 9520}
!51 = !{!"", !52, i64 0, !8, i64 16, !8, i64 20, !55, i64 24, !56, i64 32, !57, i64 40, !58, i64 152}
!52 = !{!"ccan_list_head", !53, i64 0}
!53 = !{!"ccan_list_node", !54, i64 0, !54, i64 8}
!54 = !{!"p1 _ZTS14ccan_list_node", !16, i64 0}
!55 = !{!"p1 _ZTS16rb_ractor_struct", !16, i64 0}
!56 = !{!"p1 _ZTS16rb_thread_struct", !16, i64 0}
!57 = !{!"", !9, i64 0, !55, i64 40, !8, i64 48, !9, i64 56, !17, i64 104}
!58 = !{!"", !9, i64 0, !55, i64 40, !17, i64 48, !9, i64 56, !8, i64 104, !8, i64 108, !8, i64 112, !8, i64 116, !52, i64 120, !8, i64 136, !52, i64 144, !52, i64 160, !52, i64 176, !17, i64 192, !9, i64 200, !9, i64 248, !17, i64 296, !8, i64 300, !8, i64 304, !55, i64 312, !8, i64 320}
!59 = !{!"long long", !9, i64 0}
!60 = !{!"p1 _ZTS18global_object_list", !16, i64 0}
!61 = !{!"p1 _ZTS13rb_box_struct", !16, i64 0}
!62 = !{!"p1 _ZTS8st_table", !16, i64 0}
!63 = !{!"", !9, i64 0}
!64 = !{!"p1 _ZTS22rb_postponed_job_queue", !16, i64 0}
!65 = !{!"", !66, i64 0, !67, i64 8}
!66 = !{!"p1 _ZTS11rb_objspace", !16, i64 0}
!67 = !{!"p1 _ZTS24gc_mark_func_data_struct", !16, i64 0}
!68 = !{!"p1 _ZTS15rb_at_exit_list", !16, i64 0}
!69 = !{!"p1 _ZTS19rb_builtin_function", !16, i64 0}
!70 = !{!"p1 _ZTS9set_table", !16, i64 0}
!71 = !{!"", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24}
!72 = !{!73, !12, i64 16}
!73 = !{!"set_table", !9, i64 0, !9, i64 1, !9, i64 2, !8, i64 4, !74, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !75, i64 40}
!74 = !{!"p1 _ZTS12st_hash_type", !16, i64 0}
!75 = !{!"p1 _ZTS15set_table_entry", !16, i64 0}
!76 = !{!50, !12, i64 1328}
!77 = distinct !{!77, !78}
!78 = !{!"llvm.loop.mustprogress"}
!79 = distinct !{!79, !78}
!80 = !{!81, !12, i64 0}
!81 = !{!"RBasic", !12, i64 0, !12, i64 8}
!82 = !{!22, !23, i64 8}
!83 = !{!22, !31, i64 112}
!84 = !{!22, !32, i64 120}
!85 = !{!22, !33, i64 136}
!86 = !{!22, !37, i64 192}
!87 = !{!22, !34, i64 160}
!88 = !{!22, !23, i64 48}
!89 = !{!22, !8, i64 4}
!90 = !{!9, !9, i64 0}
!91 = !{!22, !23, i64 232}
!92 = !{!22, !26, i64 56}
!93 = !{!94, !23, i64 16}
!94 = !{!"rb_iseq_param_keyword", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !23, i64 16, !23, i64 24}
!95 = !{!22, !23, i64 144}
!96 = !{!94, !8, i64 8}
!97 = !{!94, !8, i64 0}
!98 = !{!94, !23, i64 24}
!99 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!100 = !{!22, !16, i64 152}
!101 = !{!19, !12, i64 0}
!102 = !{!103, !107, i64 88}
!103 = !{!"iseq_compile_data", !12, i64 0, !12, i64 8, !8, i64 16, !23, i64 24, !17, i64 32, !9, i64 40, !104, i64 48, !104, i64 56, !104, i64 64, !35, i64 72, !105, i64 80, !106, i64 88, !106, i64 104, !17, i64 120, !17, i64 121, !8, i64 124, !8, i64 128, !8, i64 132, !8, i64 136, !8, i64 140, !8, i64 144, !8, i64 148, !108, i64 152, !39, i64 160, !69, i64 168, !109, i64 176, !17, i64 184}
!104 = !{!"p1 _ZTS15iseq_label_data", !16, i64 0}
!105 = !{!"p1 _ZTS35iseq_compile_data_ensure_node_stack", !16, i64 0}
!106 = !{!"", !107, i64 0, !107, i64 8}
!107 = !{!"p1 _ZTS25iseq_compile_data_storage", !16, i64 0}
!108 = !{!"p1 _ZTS24rb_compile_option_struct", !16, i64 0}
!109 = !{!"p1 _ZTS5RNode", !16, i64 0}
!110 = !{!107, !107, i64 0}
!111 = distinct !{!111, !78}
!112 = !{!103, !107, i64 104}
!113 = !{!103, !39, i64 160}
!114 = !{!22, !39, i64 288}
!115 = !{!116, !117, i64 0}
!116 = !{!"iseq_inline_cvar_cache_entry", !117, i64 0}
!117 = !{!"p1 _ZTS23rb_cvar_class_tbl_entry", !16, i64 0}
!118 = distinct !{!118, !78}
!119 = distinct !{!119, !78}
!120 = !{!45, !46, i64 0}
!121 = distinct !{!121, !78}
!122 = distinct !{!122, !78}
!123 = distinct !{!123, !78}
!124 = !{!22, !35, i64 176}
!125 = !{!22, !35, i64 168}
!126 = !{!22, !35, i64 296}
!127 = !{!22, !8, i64 260}
!128 = !{!129, !130, i64 0}
!129 = !{!"rb_call_data", !130, i64 0, !131, i64 8}
!130 = !{!"p1 _ZTS11rb_callinfo", !16, i64 0}
!131 = !{!"p1 _ZTS12rb_callcache", !16, i64 0}
!132 = !{!129, !131, i64 8}
!133 = !{!134, !12, i64 8}
!134 = !{!"rb_callcache", !12, i64 0, !12, i64 8, !135, i64 16, !16, i64 24, !9, i64 32}
!135 = !{!"p1 _ZTS31rb_callable_method_entry_struct", !16, i64 0}
!136 = !{!134, !135, i64 16}
!137 = !{!138, !12, i64 0}
!138 = !{!"rb_callable_method_entry_struct", !12, i64 0, !12, i64 8, !139, i64 16, !12, i64 24, !12, i64 32}
!139 = !{!"p1 _ZTS27rb_method_definition_struct", !16, i64 0}
!140 = distinct !{!140, !78}
!141 = !{!94, !8, i64 4}
!142 = distinct !{!142, !78}
!143 = !{!144, !35, i64 8}
!144 = !{!"iseq_catch_table_entry", !8, i64 0, !35, i64 8, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28}
!145 = distinct !{!145, !78}
!146 = !{!22, !16, i64 352}
!147 = !{!22, !16, i64 336}
!148 = !{!103, !8, i64 16}
!149 = !{!103, !23, i64 24}
!150 = !{!103, !17, i64 32}
!151 = !{i8 0, i8 2}
!152 = !{}
!153 = distinct !{!153, !78}
!154 = !{!22, !8, i64 128}
!155 = !{!22, !8, i64 240}
!156 = !{!22, !8, i64 28}
!157 = distinct !{!157, !78}
!158 = distinct !{!158, !78}
!159 = distinct !{!159, !78}
!160 = !{!22, !8, i64 0}
!161 = distinct !{!161, !78}
!162 = !{!163, !8, i64 0}
!163 = !{!"succ_dict_block", !8, i64 0, !12, i64 8, !9, i64 16}
!164 = !{!163, !12, i64 8}
!165 = distinct !{!165, !78}
!166 = distinct !{!166, !78}
!167 = distinct !{!167, !78}
end_hunk_1
