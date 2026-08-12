inline.NumInlined: 81
inline.NumDeleted: 60
loop-unroll.NumCompletelyUnrolled: 168
loop-unroll.NumRuntimeUnrolled: 139
loop-unroll.NumUnrolled: 307
begin_hunk_0_@alf_filter_chroma_12:bb.a
  %i.al = icmp sle i64 %i.ad, %i.o
  %i.am = select i1 %i.aj, i1 %i.ak, i1 %i.al
  %.not179 = icmp sge i64 %i.ad, %i.q
  %or.cond.not = select i1 %i.aj, i1 %.not179, i1 false
  br i1 %or.cond.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.an = icmp eq i64 %i.ad, %i.n                 ; 2 uses
  %i.ao = select i1 %i.an, ptr %i.ag, ptr %i.ah   ; 2 uses
  %i.ap = select i1 %i.an, ptr %i.ag, ptr %i.ai   ; 2 uses
  br label %.preheader233

.preheader233:                                    ; preds = %bb.f, %bb.g, %bb.e
  %.1212.ph = phi ptr [ %i.ap, %bb.e ], [ %i.at, %bb.g ], [ %i.aq, %bb.f ]
  %.1166211.ph = phi ptr [ %i.ao, %bb.e ], [ %i.au, %bb.g ], [ %i.ar, %bb.f ]
  %.1168210.ph = phi ptr [ %i.ap, %bb.e ], [ %i.at, %bb.g ], [ %i.ai, %bb.f ]
  %.1170209.ph = phi ptr [ %i.ao, %bb.e ], [ %i.au, %bb.g ], [ %i.ah, %bb.f ]
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %i.af
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %i.af
  %.not180 = icmp sgt i64 %i.ad, %i.r
  %or.cond182 = select i1 %i.aj, i1 true, i1 %.not180
  br i1 %or.cond182, label %.preheader233, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.as = icmp eq i64 %i.ad, %i.m                 ; 2 uses
  %i.at = select i1 %i.as, ptr %i.ag, ptr %i.ai   ; 2 uses
  %i.au = select i1 %i.as, ptr %i.ag, ptr %i.ah   ; 2 uses
  br label %.preheader233

bb.h:                                             ; preds = %bb.i
  %indvars.iv.next220 = add nuw nsw i64 %indvars.iv219, 1 ; 2 uses
  %exitcond222.not = icmp eq i64 %indvars.iv.next220, 4
  br i1 %exitcond222.not, label %bb.c, label %bb.d, !llvm.loop !853

bb.i:                                             ; preds = %.preheader233, %bb.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.i ], [ 0, %.preheader233 ] ; 2 uses
  %.1212 = phi ptr [ %i.ed, %bb.i ], [ %.1212.ph, %.preheader233 ] ; 2 uses
  %.1166211 = phi ptr [ %i.ec, %bb.i ], [ %.1166211.ph, %.preheader233 ] ; 2 uses
  %.1168210 = phi ptr [ %i.bd, %bb.i ], [ %.1168210.ph, %.preheader233 ] ; 2 uses
  %.1170209 = phi ptr [ %i.az, %bb.i ], [ %.1170209.ph, %.preheader233 ] ; 2 uses
  %.0171208 = phi ptr [ %i.dc, %bb.i ], [ %i.ag, %.preheader233 ] ; 5 uses
  %i.av = load i16, ptr %.0171208, align 2, !tbaa !45
  %i.aw = load i16, ptr %.1166211, align 2, !tbaa !45
  %i.ax = load i16, ptr %.1212, align 2, !tbaa !45
  %i.ay = zext i16 %i.av to i32                   ; 6 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.1170209, i64 2 ; 2 uses
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !45
  %i.bb = getelementptr inbounds i8, ptr %.1168210, i64 -2
  %i.bc = getelementptr inbounds i8, ptr %.1170209, i64 -2
  %i.bd = getelementptr inbounds nuw i8, ptr %.1168210, i64 2 ; 2 uses
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !45
  %i.bf = load <2 x i16>, ptr %i.bb, align 2, !tbaa !45
  %i.bg = load <4 x i16>, ptr %6, align 2, !tbaa !45
  %i.bh = sext <4 x i16> %i.bg to <4 x i32>
  %i.bi = load <2 x i16>, ptr %i.bc, align 2, !tbaa !45
  %i.bj = load <4 x i16>, ptr %7, align 2, !tbaa !45
  %i.bk = shufflevector <2 x i16> %i.bi, <2 x i16> poison, <4 x i32> <i32 poison, i32 poison, i32 1, i32 0>
  %i.bl = insertelement <4 x i16> %i.bk, i16 %i.aw, i64 0
  %i.bm = insertelement <4 x i16> %i.bl, i16 %i.ba, i64 1
  %i.bn = zext <4 x i16> %i.bm to <4 x i32>
  %i.bo = insertelement <4 x i32> poison, i32 %i.ay, i64 0
  %i.bp = shufflevector <4 x i32> %i.bo, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.bq = sub nsw <4 x i32> %i.bn, %i.bp          ; 2 uses
  %i.br = sext <4 x i16> %i.bj to <4 x i32>       ; 3 uses
  %i.bs = sub nsw <4 x i32> zeroinitializer, %i.br ; 4 uses
  %i.bt = icmp slt <4 x i32> %i.bq, %i.bs
  %i.bu = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.bq, <4 x i32> %i.br)
  %i.bv = select <4 x i1> %i.bt, <4 x i32> %i.bs, <4 x i32> %i.bu
  %i.bw = shufflevector <2 x i16> %i.bf, <2 x i16> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.bx = insertelement <4 x i16> %i.bw, i16 %i.ax, i64 0
  %i.by = insertelement <4 x i16> %i.bx, i16 %i.be, i64 3
  %i.bz = zext <4 x i16> %i.by to <4 x i32>
  %i.ca = sub nsw <4 x i32> %i.bz, %i.bp          ; 2 uses
  %i.cb = icmp slt <4 x i32> %i.ca, %i.bs
  %i.cc = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.ca, <4 x i32> %i.br)
  %i.cd = select <4 x i1> %i.cb, <4 x i32> %i.bs, <4 x i32> %i.cc
  %i.ce = add nsw <4 x i32> %i.bv, %i.cd
  %i.cf = shl <4 x i32> %i.ce, splat (i32 16)
  %i.cg = ashr exact <4 x i32> %i.cf, splat (i32 16)
  %i.ch = mul nsw <4 x i32> %i.cg, %i.bh
  %i.ci = load i16, ptr %i.h, align 2, !tbaa !45
  %i.cj = sext i16 %i.ci to i32
  %i.ck = getelementptr inbounds nuw i8, ptr %.0171208, i64 4
  %i.cl = load i16, ptr %i.ck, align 2, !tbaa !45
  %i.cm = getelementptr inbounds i8, ptr %.0171208, i64 -4
  %i.cn = load i16, ptr %i.cm, align 2, !tbaa !45
  %i.co = load i16, ptr %i.i, align 2, !tbaa !45
  %i.cp = zext i16 %i.cl to i32
  %i.cq = sub nsw i32 %i.cp, %i.ay                ; 2 uses
  %i.cr = sext i16 %i.co to i32                   ; 3 uses
  %i.cs = sub nsw i32 0, %i.cr                    ; 4 uses
  %i.ct = icmp slt i32 %i.cq, %i.cs
  %..i8.i183 = tail call i32 @llvm.smin.i32(i32 %i.cq, i32 %i.cr)
  %.0.i9.i184 = select i1 %i.ct, i32 %i.cs, i32 %..i8.i183
  %i.cu = zext i16 %i.cn to i32
  %i.cv = sub nsw i32 %i.cu, %i.ay                ; 2 uses
  %i.cw = icmp slt i32 %i.cv, %i.cs
  %..i.i185 = tail call i32 @llvm.smin.i32(i32 %i.cv, i32 %i.cr)
  %.0.i.i186 = select i1 %i.cw, i32 %i.cs, i32 %..i.i185
  %i.cx = add nsw i32 %.0.i9.i184, %.0.i.i186
  %sext206 = shl i32 %i.cx, 16
  %i.cy = ashr exact i32 %sext206, 16
  %i.cz = mul nsw i32 %i.cy, %i.cj
  %i.da = load i16, ptr %i.j, align 2, !tbaa !45
  %i.db = sext i16 %i.da to i32
  %i.dc = getelementptr inbounds nuw i8, ptr %.0171208, i64 2 ; 2 uses
  %i.dd = load i16, ptr %i.dc, align 2, !tbaa !45
  %i.de = getelementptr inbounds i8, ptr %.0171208, i64 -2
  %i.df = load i16, ptr %i.de, align 2, !tbaa !45
  %i.dg = load i16, ptr %i.k, align 2, !tbaa !45
  %i.dh = zext i16 %i.dd to i32
  %i.di = sub nsw i32 %i.dh, %i.ay                ; 2 uses
  %i.dj = sext i16 %i.dg to i32                   ; 3 uses
  %i.dk = sub nsw i32 0, %i.dj                    ; 4 uses
  %i.dl = icmp slt i32 %i.di, %i.dk
  %..i8.i = tail call i32 @llvm.smin.i32(i32 %i.di, i32 %i.dj)
  %.0.i9.i = select i1 %i.dl, i32 %i.dk, i32 %..i8.i
  %i.dm = zext i16 %i.df to i32
  %i.dn = sub nsw i32 %i.dm, %i.ay                ; 2 uses
  %i.do = icmp slt i32 %i.dn, %i.dk
  %..i.i = tail call i32 @llvm.smin.i32(i32 %i.dn, i32 %i.dj)
  %.0.i.i = select i1 %i.do, i32 %i.dk, i32 %..i.i
  %i.dp = add nsw i32 %.0.i9.i, %.0.i.i
  %sext207 = shl i32 %i.dp, 16
  %i.dq = ashr exact i32 %sext207, 16
  %i.dr = mul nsw i32 %i.dq, %i.db
  %i.ds = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.ch)
  %op.rdx = add i32 %i.ds, %i.cz
  %op.rdx232 = add i32 %op.rdx, %i.dr             ; 2 uses
  %i.dt = add nsw i32 %op.rdx232, 512
  %i.du = ashr i32 %i.dt, 10
  %i.dv = add nsw i32 %op.rdx232, 64
  %i.dw = ashr i32 %i.dv, 7
  %.0 = select i1 %i.am, i32 %i.du, i32 %i.dw
  %i.dx = add nsw i32 %.0, %i.ay
  %i.dy = tail call i32 @llvm.smax.i32(i32 %i.dx, i32 0)
  %i.dz = tail call i32 @llvm.umin.i32(i32 %i.dy, i32 4095)
  %i.ea = trunc nuw nsw i32 %i.dz to i16
  %i.eb = getelementptr inbounds nuw [2 x i8], ptr %gep, i64 %indvars.iv
  store i16 %i.ea, ptr %i.eb, align 2, !tbaa !45
  %i.ec = getelementptr inbounds nuw i8, ptr %.1166211, i64 2
  %i.ed = getelementptr inbounds nuw i8, ptr %.1212, i64 2
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond.not, label %bb.h, label %bb.i, !llvm.loop !854
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @alf_filter_cc_12(ptr nofree noundef captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr nofree noundef readonly captures(none) %8, i32 noundef %9) #2 {
bb.a:
  %i.a = lshr i64 %3, 1                           ; 3 uses
  %i.b = lshr i64 %1, 1
  %i.c = icmp sgt i32 %5, 0
  br i1 %i.c, label %.preheader.lr.ph, label %._crit_edge87.split

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.d = icmp sgt i32 %4, 0
  %i.e = sub nsw i64 0, %i.a
  %i.f = and i64 %3, -2
  %.not = icmp ne i32 %7, 0
  %i.g = add nsw i32 %9, 1                        ; 2 uses
  %i.h = add nsw i32 %9, -2
  %i.i = add nsw i32 %9, -1
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 2
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 6
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 10
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 12
  br i1 %i.d, label %.preheader.preheader, label %._crit_edge87.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %wide.trip.count99 = zext nneg i32 %5 to i64
  %wide.trip.count = zext nneg i32 %4 to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv96 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next97, %._crit_edge ] ; 3 uses
  %i.p = mul nuw nsw i64 %i.b, %indvars.iv96
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.p
  %i.r = trunc nuw nsw i64 %indvars.iv96 to i32
  %i.s = shl i32 %i.r, %7                         ; 6 uses
  %i.t = sext i32 %i.s to i64
  %i.u = mul nsw i64 %i.a, %i.t
  %i.v = getelementptr inbounds [2 x i8], ptr %2, i64 %i.u
  %i.w = icmp ne i32 %i.s, %9                     ; 2 uses
  %i.x = icmp ne i32 %i.s, %i.g
  %or.cond.not91 = select i1 %i.w, i1 %i.x, i1 false
  %i.y = icmp eq i32 %i.s, %i.h
  %i.z = icmp eq i32 %i.s, %i.g
  %or.cond82 = select i1 %i.y, i1 true, i1 %i.z   ; 2 uses
  %i.aa = icmp ne i32 %i.s, %i.i
  %or.cond83.not94 = and i1 %i.aa, %i.w           ; 2 uses
  %brmerge = select i1 %.not, i1 true, i1 %or.cond.not91
  %brmerge88 = select i1 %or.cond82, i1 true, i1 %or.cond83.not94 ; 2 uses
  %.076.idx = select i1 %brmerge88, i64 %i.e, i64 0
  %.mux.idx = select i1 %or.cond83.not94, i64 %i.f, i64 0
  br label %10

._crit_edge87.split:                              ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  ret void

._crit_edge:                                      ; preds = %11
  %indvars.iv.next97 = add nuw nsw i64 %indvars.iv96, 1 ; 2 uses
  %exitcond100.not = icmp eq i64 %indvars.iv.next97, %wide.trip.count99
  br i1 %exitcond100.not, label %._crit_edge87.split, label %.preheader, !llvm.loop !855

10:                                               ; preds = %.preheader, %11
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %11 ] ; 3 uses
  br i1 %brmerge, label %bb.b, label %11

bb.b:                                             ; preds = %10
  %i.ab = trunc nuw nsw i64 %indvars.iv to i32
  %i.ac = shl i32 %i.ab, %6
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds [2 x i8], ptr %i.v, i64 %i.ad ; 7 uses
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.ae, i64 %i.a ; 2 uses
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %indvars.iv ; 2 uses
  %.076 = getelementptr inbounds [2 x i8], ptr %i.ae, i64 %.076.idx
  %.074 = select i1 %brmerge88, ptr %i.af, ptr %i.ae ; 3 uses
  %.mux = getelementptr inbounds nuw [2 x i8], ptr %i.ae, i64 %.mux.idx
  %.0 = select i1 %or.cond82, ptr %i.af, ptr %.mux
  %i.ah = load i16, ptr %8, align 2, !tbaa !45
  %i.ai = sext i16 %i.ah to i32
  %i.aj = load i16, ptr %.076, align 2, !tbaa !45
  %i.ak = zext i16 %i.aj to i32
  %i.al = load i16, ptr %i.ae, align 2, !tbaa !45
  %i.am = zext i16 %i.al to i32                   ; 7 uses
  %i.an = sub nsw i32 %i.ak, %i.am
  %i.ao = mul nsw i32 %i.an, %i.ai
  %i.ap = load i16, ptr %i.j, align 2, !tbaa !45
  %i.aq = sext i16 %i.ap to i32
  %i.ar = getelementptr inbounds i8, ptr %i.ae, i64 -2
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !45
  %i.at = zext i16 %i.as to i32
  %i.au = sub nsw i32 %i.at, %i.am
  %i.av = mul nsw i32 %i.au, %i.aq
  %i.aw = load i16, ptr %i.k, align 2, !tbaa !45
  %i.ax = sext i16 %i.aw to i32
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ae, i64 2
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !45
  %i.ba = zext i16 %i.az to i32
  %i.bb = sub nsw i32 %i.ba, %i.am
  %i.bc = mul nsw i32 %i.bb, %i.ax
  %i.bd = load i16, ptr %i.l, align 2, !tbaa !45
  %i.be = sext i16 %i.bd to i32
  %i.bf = getelementptr inbounds i8, ptr %.074, i64 -2
  %i.bg = load i16, ptr %i.bf, align 2, !tbaa !45
  %i.bh = zext i16 %i.bg to i32
  %i.bi = sub nsw i32 %i.bh, %i.am
  %i.bj = mul nsw i32 %i.bi, %i.be
  %i.bk = load i16, ptr %i.m, align 2, !tbaa !45
  %i.bl = sext i16 %i.bk to i32
  %i.bm = load i16, ptr %.074, align 2, !tbaa !45
  %i.bn = zext i16 %i.bm to i32
  %i.bo = sub nsw i32 %i.bn, %i.am
  %i.bp = mul nsw i32 %i.bo, %i.bl
  %i.bq = load i16, ptr %i.n, align 2, !tbaa !45
  %i.br = sext i16 %i.bq to i32
  %i.bs = getelementptr inbounds nuw i8, ptr %.074, i64 2
  %i.bt = load i16, ptr %i.bs, align 2, !tbaa !45
  %i.bu = zext i16 %i.bt to i32
  %i.bv = sub nsw i32 %i.bu, %i.am
  %i.bw = mul nsw i32 %i.bv, %i.br
  %i.bx = load i16, ptr %i.o, align 2, !tbaa !45
  %i.by = sext i16 %i.bx to i32
  %i.bz = load i16, ptr %.0, align 2, !tbaa !45
  %i.ca = zext i16 %i.bz to i32
  %i.cb = sub nsw i32 %i.ca, %i.am
  %i.cc = mul nsw i32 %i.cb, %i.by
  %i.cd = add nsw i32 %i.ao, 64
  %i.ce = add i32 %i.cd, %i.av
  %i.cf = add i32 %i.ce, %i.bc
  %i.cg = add i32 %i.cf, %i.bj
  %i.ch = add i32 %i.cg, %i.bp
  %i.ci = add i32 %i.ch, %i.bw
  %i.cj = add i32 %i.ci, %i.cc
  %i.ck = ashr i32 %i.cj, 7
  %i.cl = tail call i32 @llvm.smax.i32(i32 %i.ck, i32 -2048)
  %.0.i84 = tail call i32 @llvm.smin.i32(i32 %i.cl, i32 2047)
  %i.cm = load i16, ptr %i.ag, align 2, !tbaa !45
  %i.cn = zext i16 %i.cm to i32
  %i.co = add nsw i32 %.0.i84, %i.cn
  %i.cp = tail call i32 @llvm.smax.i32(i32 %i.co, i32 0)
  %i.cq = tail call i32 @llvm.umin.i32(i32 %i.cp, i32 4095)
  %i.cr = trunc nuw nsw i32 %i.cq to i16
  store i16 %i.cr, ptr %i.ag, align 2, !tbaa !45
  br label %11

11:                                               ; preds = %10, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %10, !llvm.loop !856
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @alf_classify_12(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr nofree noundef captures(none) %7) #2 {
bb.a:
  %i.a = add i32 %4, 4                            ; 3 uses
  %i.b = sdiv i32 %i.a, 2
  %i.c = shl nsw i32 %i.b, 2                      ; 2 uses
  %i.d = lshr i64 %3, 1                           ; 5 uses
  %.idx = mul i64 %i.d, -6
  %i.e = getelementptr i8, ptr %2, i64 %.idx
  %i.f = getelementptr i8, ptr %i.e, i64 -4
  %i.g = icmp sgt i32 %5, -4
  br i1 %i.g, label %.lr.ph225, label %._crit_edge249.split

.lr.ph225:                                        ; preds = %bb.a
  %i.h = icmp sgt i32 %4, -4
  br i1 %i.h, label %.lr.ph.preheader, label %.preheader219

.lr.ph.preheader:                                 ; preds = %.lr.ph225
  %i.i = add nsw i32 %6, 2
  %i.j = zext i32 %i.a to i64                     ; 2 uses
  %i.k = zext i32 %i.i to i64
  %i.l = zext i32 %6 to i64
  %i.m = add nsw i32 %5, 2
  %i.n = sext i32 %i.m to i64
  %min.iters.check = icmp ult i32 %i.a, 9
  %i.o = add nsw i64 %i.j, -1
  %i.p = lshr i64 %i.o, 1
  %i.q = add nuw nsw i64 %i.p, 1                  ; 2 uses
  %i.r = and i64 %i.q, 3                          ; 2 uses
  %i.s = icmp eq i64 %i.r, 0
  %i.t = select i1 %i.s, i64 4, i64 %i.r
  %n.vec = sub nsw i64 %i.q, %i.t                 ; 3 uses
  %i.u = shl i64 %n.vec, 1
  %i.v = shl i64 %n.vec, 4
  br label %.lr.ph

.preheader219:                                    ; preds = %._crit_edge, %.lr.ph225
  %i.w = icmp sgt i32 %5, 0
  br i1 %i.w, label %.lr.ph248, label %._crit_edge249.split

.lr.ph248:                                        ; preds = %.preheader219
  %i.x = icmp sgt i32 %4, 0
  %i.y = sext i32 %i.c to i64                     ; 3 uses
  br i1 %i.x, label %.lr.ph242.preheader, label %._crit_edge249.split

.lr.ph242.preheader:                              ; preds = %.lr.ph248
  %i.z = zext nneg i32 %4 to i64
  br label %.lr.ph242

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv258 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next259, %._crit_edge ] ; 5 uses
  %.0165223 = phi ptr [ %7, %.lr.ph.preheader ], [ %i.ew, %._crit_edge ] ; 3 uses
  %i.aa = mul nuw nsw i64 %i.d, %indvars.iv258
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.aa ; 2 uses
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %i.d ; 4 uses
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %i.ac, i64 %i.d ; 3 uses
  %i.ae = icmp eq i64 %indvars.iv258, %i.l        ; 2 uses
  %i.af = icmp ne i64 %indvars.iv258, %i.k
  %.0169.idx = select i1 %i.ae, i64 0, i64 %i.d
  %.0169 = getelementptr inbounds nuw [2 x i8], ptr %i.ad, i64 %.0169.idx ; 2 uses
  %i.ag = select i1 %i.ae, i1 true, i1 %i.af
  %.0168 = select i1 %i.ag, ptr %i.ab, ptr %i.ac  ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

scalar.ph.preheader:                              ; preds = %vector.body, %.lr.ph
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %i.u, %vector.body ]
  %.1166221.ph = phi ptr [ %.0165223, %.lr.ph ], [ %i.ah, %vector.body ]
  br label %scalar.ph

vector.ph:                                        ; preds = %.lr.ph
  %i.ah = getelementptr i8, ptr %.0165223, i64 %i.v
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ai = shl nuw i64 %index, 1                   ; 4 uses
  %i.aj = shl i64 %index, 4
  %next.gep = getelementptr i8, ptr %.0165223, i64 %i.aj
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %.0168, i64 %i.ai ; 2 uses
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %i.ac, i64 %i.ai ; 2 uses
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %i.ad, i64 %i.ai ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %i.al, i64 -2
  %wide.vec = load <8 x i16>, ptr %i.an, align 2, !tbaa !45
  %i.ao = freeze <8 x i16> %wide.vec              ; 2 uses
  %i.ap = bitcast <8 x i16> %i.ao to <4 x i32>
  %i.aq = bitcast <8 x i16> %i.ao to <4 x i32>
  %i.ar = and <4 x i32> %i.aq, splat (i32 65535)
  %i.as = lshr <4 x i32> %i.ap, splat (i32 16)    ; 2 uses
  %i.at = shl nuw nsw <4 x i32> %i.as, splat (i32 1) ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.al, i64 2
  %i.av = getelementptr inbounds nuw i8, ptr %i.am, i64 2
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %.0169, i64 %i.ai ; 2 uses
  %wide.vec280 = load <8 x i16>, ptr %i.av, align 2, !tbaa !45
  %i.ax = freeze <8 x i16> %wide.vec280           ; 2 uses
  %i.ay = bitcast <8 x i16> %i.ax to <4 x i32>
  %i.az = and <4 x i32> %i.ay, splat (i32 65535)  ; 2 uses
  %i.ba = shl nuw nsw <4 x i32> %i.az, splat (i32 1) ; 2 uses
  %wide.vec283 = load <8 x i16>, ptr %i.ak, align 2, !tbaa !45
  %i.bb = freeze <8 x i16> %wide.vec283           ; 2 uses
  %i.bc = bitcast <8 x i16> %i.bb to <4 x i32>
  %.inner301 = and <8 x i16> %i.bb, <i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 0>
  %i.bd = lshr <4 x i32> %i.bc, splat (i32 16)
  %i.be = getelementptr inbounds i8, ptr %i.am, i64 -2
  %wide.vec286 = load <8 x i16>, ptr %i.be, align 2, !tbaa !45
  %i.bf = freeze <8 x i16> %wide.vec286           ; 2 uses
  %i.bg = bitcast <8 x i16> %i.bf to <4 x i32>
  %i.bh = lshr <4 x i32> %i.bg, splat (i32 16)    ; 2 uses
  %wide.vec289 = load <8 x i16>, ptr %i.au, align 2, !tbaa !45
  %i.bi = freeze <8 x i16> %wide.vec289           ; 2 uses
  %i.bj = bitcast <8 x i16> %i.bi to <4 x i32>
  %.inner303 = and <8 x i16> %i.bi, <i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 0> ; 2 uses
  %i.bk = bitcast <8 x i16> %.inner303 to <4 x i32>
  %i.bl = lshr <4 x i32> %i.bj, splat (i32 16)
  %wide.vec292 = load <8 x i16>, ptr %i.aw, align 2, !tbaa !45
  %i.bm = freeze <8 x i16> %wide.vec292           ; 2 uses
  %i.bn = getelementptr inbounds i8, ptr %i.ak, i64 -2
  %wide.vec295 = load <8 x i16>, ptr %i.bn, align 2, !tbaa !45
  %i.bo = freeze <8 x i16> %wide.vec295
  %i.bp = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  %wide.vec297 = load <8 x i16>, ptr %i.bp, align 2, !tbaa !45
  %i.bq = freeze <8 x i16> %wide.vec297
  %i.br = shufflevector <4 x i32> %i.ba, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.bs = shufflevector <4 x i32> %i.bk, <4 x i32> %i.bh, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bt = shufflevector <8 x i16> %i.bm, <8 x i16> %i.ax, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bu = bitcast <16 x i16> %i.bt to <8 x i32>
  %i.bv = lshr <8 x i32> %i.bu, splat (i32 16)
  %i.bw = add nuw nsw <8 x i32> %i.bs, %i.bv
  %i.bx = sub nsw <8 x i32> %i.br, %i.bw
  %i.by = tail call <8 x i32> @llvm.abs.v8i32(<8 x i32> %i.bx, i1 true)
  %i.bz = shufflevector <4 x i32> %i.at, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.ca = shufflevector <8 x i16> %.inner301, <8 x i16> %.inner303, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cb = bitcast <16 x i16> %i.ca to <8 x i32>
  %i.cc = shufflevector <4 x i32> %i.bh, <4 x i32> %i.ar, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cd = add nuw nsw <8 x i32> %i.cc, %i.cb
  %i.ce = sub nsw <8 x i32> %i.bz, %i.cd
  %i.cf = tail call <8 x i32> @llvm.abs.v8i32(<8 x i32> %i.ce, i1 true)
  %i.cg = add nuw nsw <8 x i32> %i.by, %i.cf
  %i.ch = shufflevector <4 x i32> %i.ba, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.ci = shufflevector <4 x i32> %i.as, <4 x i32> %i.bl, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cj = shufflevector <8 x i16> %i.bq, <8 x i16> %i.bm, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ck = bitcast <16 x i16> %i.cj to <8 x i32>
  %i.cl = and <8 x i32> %i.ck, splat (i32 65535)
  %i.cm = add nuw nsw <8 x i32> %i.ci, %i.cl
  %i.cn = sub nsw <8 x i32> %i.ch, %i.cm
  %i.co = tail call <8 x i32> @llvm.abs.v8i32(<8 x i32> %i.cn, i1 true)
  %i.cp = shufflevector <4 x i32> %i.at, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.cq = shufflevector <4 x i32> %i.az, <4 x i32> %i.bd, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cr = shufflevector <8 x i16> %i.bo, <8 x i16> %i.bf, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cs = bitcast <16 x i16> %i.cr to <8 x i32>
  %i.ct = and <8 x i32> %i.cs, splat (i32 65535)
  %i.cu = add nuw nsw <8 x i32> %i.cq, %i.ct
  %i.cv = sub nsw <8 x i32> %i.cp, %i.cu
  %i.cw = tail call <8 x i32> @llvm.abs.v8i32(<8 x i32> %i.cv, i1 true)
  %i.cx = add nuw nsw <8 x i32> %i.co, %i.cw
  %interleaved.vec = shufflevector <8 x i32> %i.cg, <8 x i32> %i.cx, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x i32> %interleaved.vec, ptr %next.gep, align 4, !tbaa !555
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cy = icmp eq i64 %index.next, %n.vec
  br i1 %i.cy, label %scalar.ph.preheader, label %vector.body, !llvm.loop !857

._crit_edge:                                      ; preds = %scalar.ph
  %indvars.iv.next259 = add nuw nsw i64 %indvars.iv258, 2
  %i.cz = icmp slt i64 %indvars.iv258, %i.n
  br i1 %i.cz, label %.lr.ph, label %.preheader219, !llvm.loop !858

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 5 uses
  %.1166221 = phi ptr [ %i.ew, %scalar.ph ], [ %.1166221.ph, %scalar.ph.preheader ] ; 2 uses
  %i.da = getelementptr inbounds nuw [2 x i8], ptr %.0168, i64 %indvars.iv ; 2 uses
  %i.db = getelementptr inbounds nuw [2 x i8], ptr %i.ac, i64 %indvars.iv ; 2 uses
  %i.dc = getelementptr inbounds nuw [2 x i8], ptr %i.ad, i64 %indvars.iv ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 2
  %i.de = getelementptr inbounds nuw [2 x i8], ptr %.0169, i64 %indvars.iv ; 2 uses
  %i.df = getelementptr inbounds i8, ptr %i.db, i64 -2
  %i.dg = getelementptr inbounds i8, ptr %i.da, i64 -2
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 4
  %i.di = load i16, ptr %i.dh, align 2, !tbaa !45
  %i.dj = getelementptr inbounds nuw i8, ptr %i.da, i64 2
  %i.dk = load i16, ptr %i.dj, align 2, !tbaa !45
  %i.dl = getelementptr inbounds i8, ptr %i.dc, i64 -2
  %i.dm = load <4 x i16>, ptr %i.dl, align 2, !tbaa !45 ; 3 uses
  %i.dn = load i16, ptr %i.dd, align 2, !tbaa !45
  %i.do = load <4 x i16>, ptr %i.df, align 2, !tbaa !45 ; 4 uses
  %i.dp = load i16, ptr %i.db, align 2, !tbaa !45 ; 2 uses
  %i.dq = load <2 x i16>, ptr %i.de, align 2, !tbaa !45
  %i.dr = shufflevector <2 x i16> %i.dq, <2 x i16> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ds = shufflevector <4 x i16> %i.dr, <4 x i16> %i.dm, <4 x i32> <i32 1, i32 7, i32 poison, i32 poison>
  %i.dt = shufflevector <4 x i16> %i.ds, <4 x i16> %i.do, <4 x i32> <i32 0, i32 1, i32 poison, i32 7>
  %i.du = insertelement <4 x i16> %i.dt, i16 %i.dp, i64 2
  %i.dv = zext <4 x i16> %i.du to <4 x i32>
  %i.dw = zext i16 %i.dp to i32
  %i.dx = shl nuw nsw i32 %i.dw, 1
  %i.dy = shufflevector <4 x i16> %i.dm, <4 x i16> %i.do, <4 x i32> <i32 1, i32 4, i32 2, i32 0>
  %i.dz = zext <4 x i16> %i.dy to <4 x i32>
  %i.ea = zext i16 %i.dn to i32
  %i.eb = shl nuw nsw i32 %i.ea, 1
  %i.ec = load <2 x i16>, ptr %i.dg, align 2, !tbaa !45
  %i.ed = shufflevector <2 x i16> %i.ec, <2 x i16> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
end_hunk_0
begin_hunk_1_@alf_filter_chroma_10:bb.a
  %i.al = icmp sle i64 %i.ad, %i.o
  %i.am = select i1 %i.aj, i1 %i.ak, i1 %i.al
  %.not179 = icmp sge i64 %i.ad, %i.q
  %or.cond.not = select i1 %i.aj, i1 %.not179, i1 false
  br i1 %or.cond.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.an = icmp eq i64 %i.ad, %i.n                 ; 2 uses
  %i.ao = select i1 %i.an, ptr %i.ag, ptr %i.ah   ; 2 uses
  %i.ap = select i1 %i.an, ptr %i.ag, ptr %i.ai   ; 2 uses
  br label %.preheader233

.preheader233:                                    ; preds = %bb.f, %bb.g, %bb.e
  %.1212.ph = phi ptr [ %i.ap, %bb.e ], [ %i.at, %bb.g ], [ %i.aq, %bb.f ]
  %.1166211.ph = phi ptr [ %i.ao, %bb.e ], [ %i.au, %bb.g ], [ %i.ar, %bb.f ]
  %.1168210.ph = phi ptr [ %i.ap, %bb.e ], [ %i.at, %bb.g ], [ %i.ai, %bb.f ]
  %.1170209.ph = phi ptr [ %i.ao, %bb.e ], [ %i.au, %bb.g ], [ %i.ah, %bb.f ]
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %i.af
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %i.af
  %.not180 = icmp sgt i64 %i.ad, %i.r
  %or.cond182 = select i1 %i.aj, i1 true, i1 %.not180
  br i1 %or.cond182, label %.preheader233, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.as = icmp eq i64 %i.ad, %i.m                 ; 2 uses
  %i.at = select i1 %i.as, ptr %i.ag, ptr %i.ai   ; 2 uses
  %i.au = select i1 %i.as, ptr %i.ag, ptr %i.ah   ; 2 uses
  br label %.preheader233

bb.h:                                             ; preds = %bb.i
  %indvars.iv.next220 = add nuw nsw i64 %indvars.iv219, 1 ; 2 uses
  %exitcond222.not = icmp eq i64 %indvars.iv.next220, 4
  br i1 %exitcond222.not, label %bb.c, label %bb.d, !llvm.loop !1536

bb.i:                                             ; preds = %.preheader233, %bb.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.i ], [ 0, %.preheader233 ] ; 2 uses
  %.1212 = phi ptr [ %i.ed, %bb.i ], [ %.1212.ph, %.preheader233 ] ; 2 uses
  %.1166211 = phi ptr [ %i.ec, %bb.i ], [ %.1166211.ph, %.preheader233 ] ; 2 uses
  %.1168210 = phi ptr [ %i.bd, %bb.i ], [ %.1168210.ph, %.preheader233 ] ; 2 uses
  %.1170209 = phi ptr [ %i.az, %bb.i ], [ %.1170209.ph, %.preheader233 ] ; 2 uses
  %.0171208 = phi ptr [ %i.dc, %bb.i ], [ %i.ag, %.preheader233 ] ; 5 uses
  %i.av = load i16, ptr %.0171208, align 2, !tbaa !45
  %i.aw = load i16, ptr %.1166211, align 2, !tbaa !45
  %i.ax = load i16, ptr %.1212, align 2, !tbaa !45
  %i.ay = zext i16 %i.av to i32                   ; 6 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.1170209, i64 2 ; 2 uses
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !45
  %i.bb = getelementptr inbounds i8, ptr %.1168210, i64 -2
  %i.bc = getelementptr inbounds i8, ptr %.1170209, i64 -2
  %i.bd = getelementptr inbounds nuw i8, ptr %.1168210, i64 2 ; 2 uses
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !45
  %i.bf = load <2 x i16>, ptr %i.bb, align 2, !tbaa !45
  %i.bg = load <4 x i16>, ptr %6, align 2, !tbaa !45
  %i.bh = sext <4 x i16> %i.bg to <4 x i32>
  %i.bi = load <2 x i16>, ptr %i.bc, align 2, !tbaa !45
  %i.bj = load <4 x i16>, ptr %7, align 2, !tbaa !45
  %i.bk = shufflevector <2 x i16> %i.bi, <2 x i16> poison, <4 x i32> <i32 poison, i32 poison, i32 1, i32 0>
  %i.bl = insertelement <4 x i16> %i.bk, i16 %i.aw, i64 0
  %i.bm = insertelement <4 x i16> %i.bl, i16 %i.ba, i64 1
  %i.bn = zext <4 x i16> %i.bm to <4 x i32>
  %i.bo = insertelement <4 x i32> poison, i32 %i.ay, i64 0
  %i.bp = shufflevector <4 x i32> %i.bo, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.bq = sub nsw <4 x i32> %i.bn, %i.bp          ; 2 uses
  %i.br = sext <4 x i16> %i.bj to <4 x i32>       ; 3 uses
  %i.bs = sub nsw <4 x i32> zeroinitializer, %i.br ; 4 uses
  %i.bt = icmp slt <4 x i32> %i.bq, %i.bs
  %i.bu = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.bq, <4 x i32> %i.br)
  %i.bv = select <4 x i1> %i.bt, <4 x i32> %i.bs, <4 x i32> %i.bu
  %i.bw = shufflevector <2 x i16> %i.bf, <2 x i16> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.bx = insertelement <4 x i16> %i.bw, i16 %i.ax, i64 0
  %i.by = insertelement <4 x i16> %i.bx, i16 %i.be, i64 3
  %i.bz = zext <4 x i16> %i.by to <4 x i32>
  %i.ca = sub nsw <4 x i32> %i.bz, %i.bp          ; 2 uses
  %i.cb = icmp slt <4 x i32> %i.ca, %i.bs
  %i.cc = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.ca, <4 x i32> %i.br)
  %i.cd = select <4 x i1> %i.cb, <4 x i32> %i.bs, <4 x i32> %i.cc
  %i.ce = add nsw <4 x i32> %i.bv, %i.cd
  %i.cf = shl <4 x i32> %i.ce, splat (i32 16)
  %i.cg = ashr exact <4 x i32> %i.cf, splat (i32 16)
  %i.ch = mul nsw <4 x i32> %i.cg, %i.bh
  %i.ci = load i16, ptr %i.h, align 2, !tbaa !45
  %i.cj = sext i16 %i.ci to i32
  %i.ck = getelementptr inbounds nuw i8, ptr %.0171208, i64 4
  %i.cl = load i16, ptr %i.ck, align 2, !tbaa !45
  %i.cm = getelementptr inbounds i8, ptr %.0171208, i64 -4
  %i.cn = load i16, ptr %i.cm, align 2, !tbaa !45
  %i.co = load i16, ptr %i.i, align 2, !tbaa !45
  %i.cp = zext i16 %i.cl to i32
  %i.cq = sub nsw i32 %i.cp, %i.ay                ; 2 uses
  %i.cr = sext i16 %i.co to i32                   ; 3 uses
  %i.cs = sub nsw i32 0, %i.cr                    ; 4 uses
  %i.ct = icmp slt i32 %i.cq, %i.cs
  %..i8.i183 = tail call i32 @llvm.smin.i32(i32 %i.cq, i32 %i.cr)
  %.0.i9.i184 = select i1 %i.ct, i32 %i.cs, i32 %..i8.i183
  %i.cu = zext i16 %i.cn to i32
  %i.cv = sub nsw i32 %i.cu, %i.ay                ; 2 uses
  %i.cw = icmp slt i32 %i.cv, %i.cs
  %..i.i185 = tail call i32 @llvm.smin.i32(i32 %i.cv, i32 %i.cr)
  %.0.i.i186 = select i1 %i.cw, i32 %i.cs, i32 %..i.i185
  %i.cx = add nsw i32 %.0.i9.i184, %.0.i.i186
  %sext206 = shl i32 %i.cx, 16
  %i.cy = ashr exact i32 %sext206, 16
  %i.cz = mul nsw i32 %i.cy, %i.cj
  %i.da = load i16, ptr %i.j, align 2, !tbaa !45
  %i.db = sext i16 %i.da to i32
  %i.dc = getelementptr inbounds nuw i8, ptr %.0171208, i64 2 ; 2 uses
  %i.dd = load i16, ptr %i.dc, align 2, !tbaa !45
  %i.de = getelementptr inbounds i8, ptr %.0171208, i64 -2
  %i.df = load i16, ptr %i.de, align 2, !tbaa !45
  %i.dg = load i16, ptr %i.k, align 2, !tbaa !45
  %i.dh = zext i16 %i.dd to i32
  %i.di = sub nsw i32 %i.dh, %i.ay                ; 2 uses
  %i.dj = sext i16 %i.dg to i32                   ; 3 uses
  %i.dk = sub nsw i32 0, %i.dj                    ; 4 uses
  %i.dl = icmp slt i32 %i.di, %i.dk
  %..i8.i = tail call i32 @llvm.smin.i32(i32 %i.di, i32 %i.dj)
  %.0.i9.i = select i1 %i.dl, i32 %i.dk, i32 %..i8.i
  %i.dm = zext i16 %i.df to i32
  %i.dn = sub nsw i32 %i.dm, %i.ay                ; 2 uses
  %i.do = icmp slt i32 %i.dn, %i.dk
  %..i.i = tail call i32 @llvm.smin.i32(i32 %i.dn, i32 %i.dj)
  %.0.i.i = select i1 %i.do, i32 %i.dk, i32 %..i.i
  %i.dp = add nsw i32 %.0.i9.i, %.0.i.i
  %sext207 = shl i32 %i.dp, 16
  %i.dq = ashr exact i32 %sext207, 16
  %i.dr = mul nsw i32 %i.dq, %i.db
  %i.ds = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.ch)
  %op.rdx = add i32 %i.ds, %i.cz
  %op.rdx232 = add i32 %op.rdx, %i.dr             ; 2 uses
  %i.dt = add nsw i32 %op.rdx232, 512
  %i.du = ashr i32 %i.dt, 10
  %i.dv = add nsw i32 %op.rdx232, 64
  %i.dw = ashr i32 %i.dv, 7
  %.0 = select i1 %i.am, i32 %i.du, i32 %i.dw
  %i.dx = add nsw i32 %.0, %i.ay
  %i.dy = tail call i32 @llvm.smax.i32(i32 %i.dx, i32 0)
  %i.dz = tail call i32 @llvm.umin.i32(i32 %i.dy, i32 1023)
  %i.ea = trunc nuw nsw i32 %i.dz to i16
  %i.eb = getelementptr inbounds nuw [2 x i8], ptr %gep, i64 %indvars.iv
  store i16 %i.ea, ptr %i.eb, align 2, !tbaa !45
  %i.ec = getelementptr inbounds nuw i8, ptr %.1166211, i64 2
  %i.ed = getelementptr inbounds nuw i8, ptr %.1212, i64 2
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond.not, label %bb.h, label %bb.i, !llvm.loop !1537
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @alf_filter_cc_10(ptr nofree noundef captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr nofree noundef readonly captures(none) %8, i32 noundef %9) #2 {
bb.a:
  %i.a = lshr i64 %3, 1                           ; 3 uses
  %i.b = lshr i64 %1, 1
  %i.c = icmp sgt i32 %5, 0
  br i1 %i.c, label %.preheader.lr.ph, label %._crit_edge87.split

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.d = icmp sgt i32 %4, 0
  %i.e = sub nsw i64 0, %i.a
  %i.f = and i64 %3, -2
  %.not = icmp ne i32 %7, 0
  %i.g = add nsw i32 %9, 1                        ; 2 uses
  %i.h = add nsw i32 %9, -2
  %i.i = add nsw i32 %9, -1
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 2
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 6
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 10
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 12
  br i1 %i.d, label %.preheader.preheader, label %._crit_edge87.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %wide.trip.count99 = zext nneg i32 %5 to i64
  %wide.trip.count = zext nneg i32 %4 to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv96 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next97, %._crit_edge ] ; 3 uses
  %i.p = mul nuw nsw i64 %i.b, %indvars.iv96
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.p
  %i.r = trunc nuw nsw i64 %indvars.iv96 to i32
  %i.s = shl i32 %i.r, %7                         ; 6 uses
  %i.t = sext i32 %i.s to i64
  %i.u = mul nsw i64 %i.a, %i.t
  %i.v = getelementptr inbounds [2 x i8], ptr %2, i64 %i.u
  %i.w = icmp ne i32 %i.s, %9                     ; 2 uses
  %i.x = icmp ne i32 %i.s, %i.g
  %or.cond.not91 = select i1 %i.w, i1 %i.x, i1 false
  %i.y = icmp eq i32 %i.s, %i.h
  %i.z = icmp eq i32 %i.s, %i.g
  %or.cond82 = select i1 %i.y, i1 true, i1 %i.z   ; 2 uses
  %i.aa = icmp ne i32 %i.s, %i.i
  %or.cond83.not94 = and i1 %i.aa, %i.w           ; 2 uses
  %brmerge = select i1 %.not, i1 true, i1 %or.cond.not91
  %brmerge88 = select i1 %or.cond82, i1 true, i1 %or.cond83.not94 ; 2 uses
  %.076.idx = select i1 %brmerge88, i64 %i.e, i64 0
  %.mux.idx = select i1 %or.cond83.not94, i64 %i.f, i64 0
  br label %10

._crit_edge87.split:                              ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  ret void

._crit_edge:                                      ; preds = %11
  %indvars.iv.next97 = add nuw nsw i64 %indvars.iv96, 1 ; 2 uses
  %exitcond100.not = icmp eq i64 %indvars.iv.next97, %wide.trip.count99
  br i1 %exitcond100.not, label %._crit_edge87.split, label %.preheader, !llvm.loop !1538

10:                                               ; preds = %.preheader, %11
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %11 ] ; 3 uses
  br i1 %brmerge, label %bb.b, label %11

bb.b:                                             ; preds = %10
  %i.ab = trunc nuw nsw i64 %indvars.iv to i32
  %i.ac = shl i32 %i.ab, %6
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds [2 x i8], ptr %i.v, i64 %i.ad ; 7 uses
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.ae, i64 %i.a ; 2 uses
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %indvars.iv ; 2 uses
  %.076 = getelementptr inbounds [2 x i8], ptr %i.ae, i64 %.076.idx
  %.074 = select i1 %brmerge88, ptr %i.af, ptr %i.ae ; 3 uses
  %.mux = getelementptr inbounds nuw [2 x i8], ptr %i.ae, i64 %.mux.idx
  %.0 = select i1 %or.cond82, ptr %i.af, ptr %.mux
  %i.ah = load i16, ptr %8, align 2, !tbaa !45
  %i.ai = sext i16 %i.ah to i32
  %i.aj = load i16, ptr %.076, align 2, !tbaa !45
  %i.ak = zext i16 %i.aj to i32
  %i.al = load i16, ptr %i.ae, align 2, !tbaa !45
  %i.am = zext i16 %i.al to i32                   ; 7 uses
  %i.an = sub nsw i32 %i.ak, %i.am
  %i.ao = mul nsw i32 %i.an, %i.ai
  %i.ap = load i16, ptr %i.j, align 2, !tbaa !45
  %i.aq = sext i16 %i.ap to i32
  %i.ar = getelementptr inbounds i8, ptr %i.ae, i64 -2
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !45
  %i.at = zext i16 %i.as to i32
  %i.au = sub nsw i32 %i.at, %i.am
  %i.av = mul nsw i32 %i.au, %i.aq
  %i.aw = load i16, ptr %i.k, align 2, !tbaa !45
  %i.ax = sext i16 %i.aw to i32
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ae, i64 2
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !45
  %i.ba = zext i16 %i.az to i32
  %i.bb = sub nsw i32 %i.ba, %i.am
  %i.bc = mul nsw i32 %i.bb, %i.ax
  %i.bd = load i16, ptr %i.l, align 2, !tbaa !45
  %i.be = sext i16 %i.bd to i32
  %i.bf = getelementptr inbounds i8, ptr %.074, i64 -2
  %i.bg = load i16, ptr %i.bf, align 2, !tbaa !45
  %i.bh = zext i16 %i.bg to i32
  %i.bi = sub nsw i32 %i.bh, %i.am
  %i.bj = mul nsw i32 %i.bi, %i.be
  %i.bk = load i16, ptr %i.m, align 2, !tbaa !45
  %i.bl = sext i16 %i.bk to i32
  %i.bm = load i16, ptr %.074, align 2, !tbaa !45
  %i.bn = zext i16 %i.bm to i32
  %i.bo = sub nsw i32 %i.bn, %i.am
  %i.bp = mul nsw i32 %i.bo, %i.bl
  %i.bq = load i16, ptr %i.n, align 2, !tbaa !45
  %i.br = sext i16 %i.bq to i32
  %i.bs = getelementptr inbounds nuw i8, ptr %.074, i64 2
  %i.bt = load i16, ptr %i.bs, align 2, !tbaa !45
  %i.bu = zext i16 %i.bt to i32
  %i.bv = sub nsw i32 %i.bu, %i.am
  %i.bw = mul nsw i32 %i.bv, %i.br
  %i.bx = load i16, ptr %i.o, align 2, !tbaa !45
  %i.by = sext i16 %i.bx to i32
  %i.bz = load i16, ptr %.0, align 2, !tbaa !45
  %i.ca = zext i16 %i.bz to i32
  %i.cb = sub nsw i32 %i.ca, %i.am
  %i.cc = mul nsw i32 %i.cb, %i.by
  %i.cd = add nsw i32 %i.ao, 64
  %i.ce = add i32 %i.cd, %i.av
  %i.cf = add i32 %i.ce, %i.bc
  %i.cg = add i32 %i.cf, %i.bj
  %i.ch = add i32 %i.cg, %i.bp
  %i.ci = add i32 %i.ch, %i.bw
  %i.cj = add i32 %i.ci, %i.cc
  %i.ck = ashr i32 %i.cj, 7
  %i.cl = tail call i32 @llvm.smax.i32(i32 %i.ck, i32 -512)
  %.0.i84 = tail call i32 @llvm.smin.i32(i32 %i.cl, i32 511)
  %i.cm = load i16, ptr %i.ag, align 2, !tbaa !45
  %i.cn = zext i16 %i.cm to i32
  %i.co = add nsw i32 %.0.i84, %i.cn
  %i.cp = tail call i32 @llvm.smax.i32(i32 %i.co, i32 0)
  %i.cq = tail call i32 @llvm.umin.i32(i32 %i.cp, i32 1023)
  %i.cr = trunc nuw nsw i32 %i.cq to i16
  store i16 %i.cr, ptr %i.ag, align 2, !tbaa !45
  br label %11

11:                                               ; preds = %10, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %10, !llvm.loop !1539
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @alf_classify_10(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr nofree noundef captures(none) %7) #2 {
bb.a:
  %i.a = add i32 %4, 4                            ; 3 uses
  %i.b = sdiv i32 %i.a, 2
  %i.c = shl nsw i32 %i.b, 2                      ; 2 uses
  %i.d = lshr i64 %3, 1                           ; 5 uses
  %.idx = mul i64 %i.d, -6
  %i.e = getelementptr i8, ptr %2, i64 %.idx
  %i.f = getelementptr i8, ptr %i.e, i64 -4
  %i.g = icmp sgt i32 %5, -4
  br i1 %i.g, label %.lr.ph225, label %._crit_edge249.split

.lr.ph225:                                        ; preds = %bb.a
  %i.h = icmp sgt i32 %4, -4
  br i1 %i.h, label %.lr.ph.preheader, label %.preheader219

.lr.ph.preheader:                                 ; preds = %.lr.ph225
  %i.i = add nsw i32 %6, 2
  %i.j = zext i32 %i.a to i64                     ; 2 uses
  %i.k = zext i32 %i.i to i64
  %i.l = zext i32 %6 to i64
  %i.m = add nsw i32 %5, 2
  %i.n = sext i32 %i.m to i64
  %min.iters.check = icmp ult i32 %i.a, 9
  %i.o = add nsw i64 %i.j, -1
  %i.p = lshr i64 %i.o, 1
  %i.q = add nuw nsw i64 %i.p, 1                  ; 2 uses
  %i.r = and i64 %i.q, 3                          ; 2 uses
  %i.s = icmp eq i64 %i.r, 0
  %i.t = select i1 %i.s, i64 4, i64 %i.r
  %n.vec = sub nsw i64 %i.q, %i.t                 ; 3 uses
  %i.u = shl i64 %n.vec, 1
  %i.v = shl i64 %n.vec, 4
  br label %.lr.ph

.preheader219:                                    ; preds = %._crit_edge, %.lr.ph225
  %i.w = icmp sgt i32 %5, 0
  br i1 %i.w, label %.lr.ph248, label %._crit_edge249.split

.lr.ph248:                                        ; preds = %.preheader219
  %i.x = icmp sgt i32 %4, 0
  %i.y = sext i32 %i.c to i64                     ; 3 uses
  br i1 %i.x, label %.lr.ph242.preheader, label %._crit_edge249.split

.lr.ph242.preheader:                              ; preds = %.lr.ph248
  %i.z = zext nneg i32 %4 to i64
  br label %.lr.ph242

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv258 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next259, %._crit_edge ] ; 5 uses
  %.0165223 = phi ptr [ %7, %.lr.ph.preheader ], [ %i.ew, %._crit_edge ] ; 3 uses
  %i.aa = mul nuw nsw i64 %i.d, %indvars.iv258
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.aa ; 2 uses
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %i.d ; 4 uses
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %i.ac, i64 %i.d ; 3 uses
  %i.ae = icmp eq i64 %indvars.iv258, %i.l        ; 2 uses
  %i.af = icmp ne i64 %indvars.iv258, %i.k
  %.0169.idx = select i1 %i.ae, i64 0, i64 %i.d
  %.0169 = getelementptr inbounds nuw [2 x i8], ptr %i.ad, i64 %.0169.idx ; 2 uses
  %i.ag = select i1 %i.ae, i1 true, i1 %i.af
  %.0168 = select i1 %i.ag, ptr %i.ab, ptr %i.ac  ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

scalar.ph.preheader:                              ; preds = %vector.body, %.lr.ph
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %i.u, %vector.body ]
  %.1166221.ph = phi ptr [ %.0165223, %.lr.ph ], [ %i.ah, %vector.body ]
  br label %scalar.ph

vector.ph:                                        ; preds = %.lr.ph
  %i.ah = getelementptr i8, ptr %.0165223, i64 %i.v
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ai = shl nuw i64 %index, 1                   ; 4 uses
  %i.aj = shl i64 %index, 4
  %next.gep = getelementptr i8, ptr %.0165223, i64 %i.aj
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %.0168, i64 %i.ai ; 2 uses
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %i.ac, i64 %i.ai ; 2 uses
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %i.ad, i64 %i.ai ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %i.al, i64 -2
  %wide.vec = load <8 x i16>, ptr %i.an, align 2, !tbaa !45
  %i.ao = freeze <8 x i16> %wide.vec              ; 2 uses
  %i.ap = bitcast <8 x i16> %i.ao to <4 x i32>
  %i.aq = bitcast <8 x i16> %i.ao to <4 x i32>
  %i.ar = and <4 x i32> %i.aq, splat (i32 65535)
  %i.as = lshr <4 x i32> %i.ap, splat (i32 16)    ; 2 uses
  %i.at = shl nuw nsw <4 x i32> %i.as, splat (i32 1) ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.al, i64 2
  %i.av = getelementptr inbounds nuw i8, ptr %i.am, i64 2
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %.0169, i64 %i.ai ; 2 uses
  %wide.vec280 = load <8 x i16>, ptr %i.av, align 2, !tbaa !45
  %i.ax = freeze <8 x i16> %wide.vec280           ; 2 uses
  %i.ay = bitcast <8 x i16> %i.ax to <4 x i32>
  %i.az = and <4 x i32> %i.ay, splat (i32 65535)  ; 2 uses
  %i.ba = shl nuw nsw <4 x i32> %i.az, splat (i32 1) ; 2 uses
  %wide.vec283 = load <8 x i16>, ptr %i.ak, align 2, !tbaa !45
  %i.bb = freeze <8 x i16> %wide.vec283           ; 2 uses
  %i.bc = bitcast <8 x i16> %i.bb to <4 x i32>
  %.inner301 = and <8 x i16> %i.bb, <i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 0>
  %i.bd = lshr <4 x i32> %i.bc, splat (i32 16)
  %i.be = getelementptr inbounds i8, ptr %i.am, i64 -2
  %wide.vec286 = load <8 x i16>, ptr %i.be, align 2, !tbaa !45
  %i.bf = freeze <8 x i16> %wide.vec286           ; 2 uses
  %i.bg = bitcast <8 x i16> %i.bf to <4 x i32>
  %i.bh = lshr <4 x i32> %i.bg, splat (i32 16)    ; 2 uses
  %wide.vec289 = load <8 x i16>, ptr %i.au, align 2, !tbaa !45
  %i.bi = freeze <8 x i16> %wide.vec289           ; 2 uses
  %i.bj = bitcast <8 x i16> %i.bi to <4 x i32>
  %.inner303 = and <8 x i16> %i.bi, <i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 0> ; 2 uses
  %i.bk = bitcast <8 x i16> %.inner303 to <4 x i32>
  %i.bl = lshr <4 x i32> %i.bj, splat (i32 16)
  %wide.vec292 = load <8 x i16>, ptr %i.aw, align 2, !tbaa !45
  %i.bm = freeze <8 x i16> %wide.vec292           ; 2 uses
  %i.bn = getelementptr inbounds i8, ptr %i.ak, i64 -2
  %wide.vec295 = load <8 x i16>, ptr %i.bn, align 2, !tbaa !45
  %i.bo = freeze <8 x i16> %wide.vec295
  %i.bp = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  %wide.vec297 = load <8 x i16>, ptr %i.bp, align 2, !tbaa !45
  %i.bq = freeze <8 x i16> %wide.vec297
  %i.br = shufflevector <4 x i32> %i.ba, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.bs = shufflevector <4 x i32> %i.bk, <4 x i32> %i.bh, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bt = shufflevector <8 x i16> %i.bm, <8 x i16> %i.ax, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bu = bitcast <16 x i16> %i.bt to <8 x i32>
  %i.bv = lshr <8 x i32> %i.bu, splat (i32 16)
  %i.bw = add nuw nsw <8 x i32> %i.bs, %i.bv
  %i.bx = sub nsw <8 x i32> %i.br, %i.bw
  %i.by = tail call <8 x i32> @llvm.abs.v8i32(<8 x i32> %i.bx, i1 true)
  %i.bz = shufflevector <4 x i32> %i.at, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.ca = shufflevector <8 x i16> %.inner301, <8 x i16> %.inner303, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cb = bitcast <16 x i16> %i.ca to <8 x i32>
  %i.cc = shufflevector <4 x i32> %i.bh, <4 x i32> %i.ar, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cd = add nuw nsw <8 x i32> %i.cc, %i.cb
  %i.ce = sub nsw <8 x i32> %i.bz, %i.cd
  %i.cf = tail call <8 x i32> @llvm.abs.v8i32(<8 x i32> %i.ce, i1 true)
  %i.cg = add nuw nsw <8 x i32> %i.by, %i.cf
  %i.ch = shufflevector <4 x i32> %i.ba, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.ci = shufflevector <4 x i32> %i.as, <4 x i32> %i.bl, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cj = shufflevector <8 x i16> %i.bq, <8 x i16> %i.bm, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ck = bitcast <16 x i16> %i.cj to <8 x i32>
  %i.cl = and <8 x i32> %i.ck, splat (i32 65535)
  %i.cm = add nuw nsw <8 x i32> %i.ci, %i.cl
  %i.cn = sub nsw <8 x i32> %i.ch, %i.cm
  %i.co = tail call <8 x i32> @llvm.abs.v8i32(<8 x i32> %i.cn, i1 true)
  %i.cp = shufflevector <4 x i32> %i.at, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.cq = shufflevector <4 x i32> %i.az, <4 x i32> %i.bd, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cr = shufflevector <8 x i16> %i.bo, <8 x i16> %i.bf, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cs = bitcast <16 x i16> %i.cr to <8 x i32>
  %i.ct = and <8 x i32> %i.cs, splat (i32 65535)
  %i.cu = add nuw nsw <8 x i32> %i.cq, %i.ct
  %i.cv = sub nsw <8 x i32> %i.cp, %i.cu
  %i.cw = tail call <8 x i32> @llvm.abs.v8i32(<8 x i32> %i.cv, i1 true)
  %i.cx = add nuw nsw <8 x i32> %i.co, %i.cw
  %interleaved.vec = shufflevector <8 x i32> %i.cg, <8 x i32> %i.cx, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x i32> %interleaved.vec, ptr %next.gep, align 4, !tbaa !555
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cy = icmp eq i64 %index.next, %n.vec
  br i1 %i.cy, label %scalar.ph.preheader, label %vector.body, !llvm.loop !1540

._crit_edge:                                      ; preds = %scalar.ph
  %indvars.iv.next259 = add nuw nsw i64 %indvars.iv258, 2
  %i.cz = icmp slt i64 %indvars.iv258, %i.n
  br i1 %i.cz, label %.lr.ph, label %.preheader219, !llvm.loop !1541

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 5 uses
  %.1166221 = phi ptr [ %i.ew, %scalar.ph ], [ %.1166221.ph, %scalar.ph.preheader ] ; 2 uses
  %i.da = getelementptr inbounds nuw [2 x i8], ptr %.0168, i64 %indvars.iv ; 2 uses
  %i.db = getelementptr inbounds nuw [2 x i8], ptr %i.ac, i64 %indvars.iv ; 2 uses
  %i.dc = getelementptr inbounds nuw [2 x i8], ptr %i.ad, i64 %indvars.iv ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 2
  %i.de = getelementptr inbounds nuw [2 x i8], ptr %.0169, i64 %indvars.iv ; 2 uses
  %i.df = getelementptr inbounds i8, ptr %i.db, i64 -2
  %i.dg = getelementptr inbounds i8, ptr %i.da, i64 -2
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 4
  %i.di = load i16, ptr %i.dh, align 2, !tbaa !45
  %i.dj = getelementptr inbounds nuw i8, ptr %i.da, i64 2
  %i.dk = load i16, ptr %i.dj, align 2, !tbaa !45
  %i.dl = getelementptr inbounds i8, ptr %i.dc, i64 -2
  %i.dm = load <4 x i16>, ptr %i.dl, align 2, !tbaa !45 ; 3 uses
  %i.dn = load i16, ptr %i.dd, align 2, !tbaa !45
  %i.do = load <4 x i16>, ptr %i.df, align 2, !tbaa !45 ; 4 uses
  %i.dp = load i16, ptr %i.db, align 2, !tbaa !45 ; 2 uses
  %i.dq = load <2 x i16>, ptr %i.de, align 2, !tbaa !45
  %i.dr = shufflevector <2 x i16> %i.dq, <2 x i16> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ds = shufflevector <4 x i16> %i.dr, <4 x i16> %i.dm, <4 x i32> <i32 1, i32 7, i32 poison, i32 poison>
  %i.dt = shufflevector <4 x i16> %i.ds, <4 x i16> %i.do, <4 x i32> <i32 0, i32 1, i32 poison, i32 7>
  %i.du = insertelement <4 x i16> %i.dt, i16 %i.dp, i64 2
  %i.dv = zext <4 x i16> %i.du to <4 x i32>
  %i.dw = zext i16 %i.dp to i32
  %i.dx = shl nuw nsw i32 %i.dw, 1
  %i.dy = shufflevector <4 x i16> %i.dm, <4 x i16> %i.do, <4 x i32> <i32 1, i32 4, i32 2, i32 0>
  %i.dz = zext <4 x i16> %i.dy to <4 x i32>
  %i.ea = zext i16 %i.dn to i32
  %i.eb = shl nuw nsw i32 %i.ea, 1
  %i.ec = load <2 x i16>, ptr %i.dg, align 2, !tbaa !45
  %i.ed = shufflevector <2 x i16> %i.ec, <2 x i16> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
end_hunk_1
begin_hunk_2_@alf_filter_chroma_8:bb.a

bb.g:                                             ; preds = %bb.f
  %i.aq = icmp eq i64 %i.ab, %i.k                 ; 2 uses
  %i.ar = select i1 %i.aq, ptr %i.ae, ptr %i.ag   ; 2 uses
  %i.as = select i1 %i.aq, ptr %i.ae, ptr %i.af   ; 2 uses
  br label %.preheader233

bb.h:                                             ; preds = %bb.i
  %indvars.iv.next220 = add nuw nsw i64 %indvars.iv219, 1 ; 2 uses
  %exitcond222.not = icmp eq i64 %indvars.iv.next220, 4
  br i1 %exitcond222.not, label %bb.c, label %bb.d, !llvm.loop !2262

bb.i:                                             ; preds = %.preheader233, %bb.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.i ], [ 0, %.preheader233 ] ; 2 uses
  %.1212 = phi ptr [ %i.ez, %bb.i ], [ %.1212.ph, %.preheader233 ] ; 2 uses
  %.1166211 = phi ptr [ %i.ey, %bb.i ], [ %.1166211.ph, %.preheader233 ] ; 2 uses
  %.1168210 = phi ptr [ %i.bb, %bb.i ], [ %.1168210.ph, %.preheader233 ] ; 3 uses
  %.1170209 = phi ptr [ %i.ax, %bb.i ], [ %.1170209.ph, %.preheader233 ] ; 3 uses
  %.0171208 = phi ptr [ %i.dz, %bb.i ], [ %i.ae, %.preheader233 ] ; 5 uses
  %i.at = load i8, ptr %.0171208, align 1, !tbaa !62 ; 2 uses
  %i.au = load i8, ptr %.1166211, align 1, !tbaa !62
  %i.av = load i8, ptr %.1212, align 1, !tbaa !62
  %i.aw = zext i8 %i.at to i32                    ; 9 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.1170209, i64 1 ; 2 uses
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !62
  %i.az = getelementptr inbounds i8, ptr %.1168210, i64 -1
  %i.ba = getelementptr inbounds i8, ptr %.1170209, i64 -1
  %i.bb = getelementptr inbounds nuw i8, ptr %.1168210, i64 1 ; 2 uses
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !62
  %i.bd = load i8, ptr %.1168210, align 1, !tbaa !62
  %i.be = load i8, ptr %i.az, align 1, !tbaa !62
  %i.bf = load <4 x i16>, ptr %6, align 2, !tbaa !45
  %i.bg = sext <4 x i16> %i.bf to <4 x i32>
  %i.bh = load i8, ptr %.1170209, align 1, !tbaa !62
  %i.bi = load i8, ptr %i.ba, align 1, !tbaa !62
  %i.bj = load <4 x i16>, ptr %7, align 2, !tbaa !45 ; 2 uses
  %i.bk = zext i8 %i.bi to i32
  %i.bl = zext i8 %i.bh to i32
  %i.bm = zext i8 %i.au to i32
  %i.bn = zext i8 %i.ay to i32
  %i.bo = sub nsw i32 %i.bk, %i.aw                ; 2 uses
  %i.bp = sub nsw i32 %i.bl, %i.aw                ; 2 uses
  %i.bq = sub nsw i32 %i.bm, %i.aw                ; 2 uses
  %i.br = sub nsw i32 %i.bn, %i.aw                ; 2 uses
  %i.bs = sext <4 x i16> %i.bj to <4 x i32>       ; 2 uses
  %i.bt = sub nsw <4 x i32> zeroinitializer, %i.bs ; 4 uses
  %i.bu = trunc nsw i32 %i.bq to i16
  %i.bv = insertelement <4 x i16> poison, i16 %i.bu, i64 0
  %i.bw = trunc nsw i32 %i.br to i16
  %i.bx = insertelement <4 x i16> %i.bv, i16 %i.bw, i64 1
  %i.by = trunc nsw i32 %i.bp to i16
  %i.bz = insertelement <4 x i16> %i.bx, i16 %i.by, i64 2
  %i.ca = trunc nsw i32 %i.bo to i16
  %i.cb = insertelement <4 x i16> %i.bz, i16 %i.ca, i64 3
  %i.cc = sext <4 x i16> %i.cb to <4 x i32>
  %i.cd = icmp slt <4 x i32> %i.cc, %i.bt
  %i.ce = insertelement <4 x i32> poison, i32 %i.bq, i64 0
  %i.cf = insertelement <4 x i32> %i.ce, i32 %i.br, i64 1
  %i.cg = insertelement <4 x i32> %i.cf, i32 %i.bp, i64 2
  %i.ch = insertelement <4 x i32> %i.cg, i32 %i.bo, i64 3
  %i.ci = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.ch, <4 x i32> %i.bs)
  %i.cj = select <4 x i1> %i.cd, <4 x i32> %i.bt, <4 x i32> %i.ci
  %i.ck = zext i8 %i.av to i16
  %i.cl = insertelement <4 x i16> poison, i16 %i.ck, i64 0
  %i.cm = zext i8 %i.be to i16
  %i.cn = insertelement <4 x i16> %i.cl, i16 %i.cm, i64 1
  %i.co = zext i8 %i.bd to i16
  %i.cp = insertelement <4 x i16> %i.cn, i16 %i.co, i64 2
  %i.cq = zext i8 %i.bc to i16
  %i.cr = insertelement <4 x i16> %i.cp, i16 %i.cq, i64 3
  %i.cs = zext i8 %i.at to i16
  %i.ct = insertelement <4 x i16> poison, i16 %i.cs, i64 0
  %i.cu = shufflevector <4 x i16> %i.ct, <4 x i16> poison, <4 x i32> zeroinitializer
  %i.cv = sub nsw <4 x i16> %i.cr, %i.cu          ; 2 uses
  %i.cw = sext <4 x i16> %i.cv to <4 x i32>
  %i.cx = icmp slt <4 x i32> %i.cw, %i.bt
  %i.cy = tail call <4 x i16> @llvm.smin.v4i16(<4 x i16> %i.cv, <4 x i16> %i.bj)
  %i.cz = zext <4 x i16> %i.cy to <4 x i32>
  %i.da = select <4 x i1> %i.cx, <4 x i32> %i.bt, <4 x i32> %i.cz
  %i.db = add <4 x i32> %i.cj, %i.da
  %i.dc = shl <4 x i32> %i.db, splat (i32 16)
  %i.dd = ashr exact <4 x i32> %i.dc, splat (i32 16)
  %i.de = mul nsw <4 x i32> %i.dd, %i.bg
  %i.df = load i16, ptr %i.f, align 2, !tbaa !45
  %i.dg = sext i16 %i.df to i32
  %i.dh = getelementptr inbounds nuw i8, ptr %.0171208, i64 2
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !62
  %i.dj = getelementptr inbounds i8, ptr %.0171208, i64 -2
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !62
  %i.dl = load i16, ptr %i.g, align 2, !tbaa !45
  %i.dm = zext i8 %i.di to i32
  %i.dn = sub nsw i32 %i.dm, %i.aw                ; 2 uses
  %i.do = sext i16 %i.dl to i32                   ; 3 uses
  %i.dp = sub nsw i32 0, %i.do                    ; 4 uses
  %i.dq = icmp slt i32 %i.dn, %i.dp
  %..i8.i183 = tail call i32 @llvm.smin.i32(i32 %i.dn, i32 %i.do)
  %.0.i9.i184 = select i1 %i.dq, i32 %i.dp, i32 %..i8.i183
  %i.dr = zext i8 %i.dk to i32
  %i.ds = sub nsw i32 %i.dr, %i.aw                ; 2 uses
  %i.dt = icmp slt i32 %i.ds, %i.dp
  %..i.i185 = tail call i32 @llvm.smin.i32(i32 %i.ds, i32 %i.do)
  %.0.i.i186 = select i1 %i.dt, i32 %i.dp, i32 %..i.i185
  %i.du = add nsw i32 %.0.i9.i184, %.0.i.i186
  %sext206 = shl i32 %i.du, 16
  %i.dv = ashr exact i32 %sext206, 16
  %i.dw = mul nsw i32 %i.dv, %i.dg
  %i.dx = load i16, ptr %i.h, align 2, !tbaa !45
  %i.dy = sext i16 %i.dx to i32
  %i.dz = getelementptr inbounds nuw i8, ptr %.0171208, i64 1 ; 2 uses
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !62
  %i.eb = getelementptr inbounds i8, ptr %.0171208, i64 -1
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !62
  %i.ed = load i16, ptr %i.i, align 2, !tbaa !45
  %i.ee = zext i8 %i.ea to i32
  %i.ef = sub nsw i32 %i.ee, %i.aw                ; 2 uses
  %i.eg = sext i16 %i.ed to i32                   ; 3 uses
  %i.eh = sub nsw i32 0, %i.eg                    ; 4 uses
  %i.ei = icmp slt i32 %i.ef, %i.eh
  %..i8.i = tail call i32 @llvm.smin.i32(i32 %i.ef, i32 %i.eg)
  %.0.i9.i = select i1 %i.ei, i32 %i.eh, i32 %..i8.i
  %i.ej = zext i8 %i.ec to i32
  %i.ek = sub nsw i32 %i.ej, %i.aw                ; 2 uses
  %i.el = icmp slt i32 %i.ek, %i.eh
  %..i.i = tail call i32 @llvm.smin.i32(i32 %i.ek, i32 %i.eg)
  %.0.i.i = select i1 %i.el, i32 %i.eh, i32 %..i.i
  %i.em = add nsw i32 %.0.i9.i, %.0.i.i
  %sext207 = shl i32 %i.em, 16
  %i.en = ashr exact i32 %sext207, 16
  %i.eo = mul nsw i32 %i.en, %i.dy
  %i.ep = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.de)
  %op.rdx = add i32 %i.ep, %i.dw
  %op.rdx232 = add i32 %op.rdx, %i.eo             ; 2 uses
  %i.eq = add nsw i32 %op.rdx232, 512
  %i.er = ashr i32 %i.eq, 10
  %i.es = add nsw i32 %op.rdx232, 64
  %i.et = ashr i32 %i.es, 7
  %.0 = select i1 %i.ak, i32 %i.er, i32 %i.et
  %i.eu = add nsw i32 %.0, %i.aw                  ; 3 uses
  %.not.i = icmp ult i32 %i.eu, 256
  %isnotneg.i = icmp sgt i32 %i.eu, -1
  %i.ev = sext i1 %isnotneg.i to i8
  %i.ew = trunc nuw i32 %i.eu to i8
  %.0.i = select i1 %.not.i, i8 %i.ew, i8 %i.ev
  %i.ex = getelementptr inbounds nuw i8, ptr %gep, i64 %indvars.iv
  store i8 %.0.i, ptr %i.ex, align 1, !tbaa !62
  %i.ey = getelementptr inbounds nuw i8, ptr %.1166211, i64 1
  %i.ez = getelementptr inbounds nuw i8, ptr %.1212, i64 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond.not, label %bb.h, label %bb.i, !llvm.loop !2263
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @alf_filter_cc_8(ptr nofree noundef captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr nofree noundef readonly captures(none) %8, i32 noundef %9) #2 {
bb.a:
  %i.a = icmp sgt i32 %5, 0
  br i1 %i.a, label %.preheader.lr.ph, label %._crit_edge87.split

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.b = icmp sgt i32 %4, 0
  %i.c = sub i64 0, %3
  %i.d = shl nsw i64 %3, 1
  %.not = icmp ne i32 %7, 0
  %i.e = add nsw i32 %9, 1                        ; 2 uses
  %i.f = add nsw i32 %9, -2
  %i.g = add nsw i32 %9, -1
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 2
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 6
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 10
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 12
  br i1 %i.b, label %.preheader.preheader, label %._crit_edge87.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %wide.trip.count99 = zext nneg i32 %5 to i64
  %wide.trip.count = zext nneg i32 %4 to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv96 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next97, %._crit_edge ] ; 3 uses
  %i.n = mul nsw i64 %1, %indvars.iv96
  %i.o = getelementptr inbounds i8, ptr %0, i64 %i.n
  %i.p = trunc nuw nsw i64 %indvars.iv96 to i32
  %i.q = shl i32 %i.p, %7                         ; 6 uses
  %i.r = sext i32 %i.q to i64
  %i.s = mul nsw i64 %3, %i.r
  %i.t = getelementptr inbounds i8, ptr %2, i64 %i.s
  %i.u = icmp ne i32 %i.q, %9                     ; 2 uses
  %i.v = icmp ne i32 %i.q, %i.e
  %or.cond.not91 = select i1 %i.u, i1 %i.v, i1 false
  %i.w = icmp eq i32 %i.q, %i.f
  %i.x = icmp eq i32 %i.q, %i.e
  %or.cond82 = select i1 %i.w, i1 true, i1 %i.x   ; 2 uses
  %i.y = icmp ne i32 %i.q, %i.g
  %or.cond83.not94 = and i1 %i.y, %i.u            ; 2 uses
  %brmerge = select i1 %.not, i1 true, i1 %or.cond.not91
  %brmerge88 = select i1 %or.cond82, i1 true, i1 %or.cond83.not94 ; 2 uses
  %.076.idx = select i1 %brmerge88, i64 %i.c, i64 0
  %.mux.idx = select i1 %or.cond83.not94, i64 %i.d, i64 0
  br label %10

._crit_edge87.split:                              ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  ret void

._crit_edge:                                      ; preds = %11
  %indvars.iv.next97 = add nuw nsw i64 %indvars.iv96, 1 ; 2 uses
  %exitcond100.not = icmp eq i64 %indvars.iv.next97, %wide.trip.count99
  br i1 %exitcond100.not, label %._crit_edge87.split, label %.preheader, !llvm.loop !2264

10:                                               ; preds = %.preheader, %11
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %11 ] ; 3 uses
  br i1 %brmerge, label %bb.b, label %11

bb.b:                                             ; preds = %10
  %i.z = trunc nuw nsw i64 %indvars.iv to i32
  %i.aa = shl i32 %i.z, %6
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds i8, ptr %i.t, i64 %i.ab ; 7 uses
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 %3 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.o, i64 %indvars.iv ; 2 uses
  %.076 = getelementptr inbounds i8, ptr %i.ac, i64 %.076.idx
  %.074 = select i1 %brmerge88, ptr %i.ad, ptr %i.ac ; 3 uses
  %.mux = getelementptr inbounds i8, ptr %i.ac, i64 %.mux.idx
  %.0 = select i1 %or.cond82, ptr %i.ad, ptr %.mux
  %i.af = load i16, ptr %8, align 2, !tbaa !45
  %i.ag = sext i16 %i.af to i32
  %i.ah = load i8, ptr %.076, align 1, !tbaa !62
  %i.ai = zext i8 %i.ah to i32
  %i.aj = load i8, ptr %i.ac, align 1, !tbaa !62
  %i.ak = zext i8 %i.aj to i32                    ; 7 uses
  %i.al = sub nsw i32 %i.ai, %i.ak
  %i.am = mul nsw i32 %i.al, %i.ag
  %i.an = load i16, ptr %i.h, align 2, !tbaa !45
  %i.ao = sext i16 %i.an to i32
  %i.ap = getelementptr inbounds i8, ptr %i.ac, i64 -1
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !62
  %i.ar = zext i8 %i.aq to i32
  %i.as = sub nsw i32 %i.ar, %i.ak
  %i.at = mul nsw i32 %i.as, %i.ao
  %i.au = load i16, ptr %i.i, align 2, !tbaa !45
  %i.av = sext i16 %i.au to i32
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ac, i64 1
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !62
  %i.ay = zext i8 %i.ax to i32
  %i.az = sub nsw i32 %i.ay, %i.ak
  %i.ba = mul nsw i32 %i.az, %i.av
  %i.bb = load i16, ptr %i.j, align 2, !tbaa !45
  %i.bc = sext i16 %i.bb to i32
  %i.bd = getelementptr inbounds i8, ptr %.074, i64 -1
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !62
  %i.bf = zext i8 %i.be to i32
  %i.bg = sub nsw i32 %i.bf, %i.ak
  %i.bh = mul nsw i32 %i.bg, %i.bc
  %i.bi = load i16, ptr %i.k, align 2, !tbaa !45
  %i.bj = sext i16 %i.bi to i32
  %i.bk = load i8, ptr %.074, align 1, !tbaa !62
  %i.bl = zext i8 %i.bk to i32
  %i.bm = sub nsw i32 %i.bl, %i.ak
  %i.bn = mul nsw i32 %i.bm, %i.bj
  %i.bo = load i16, ptr %i.l, align 2, !tbaa !45
  %i.bp = sext i16 %i.bo to i32
  %i.bq = getelementptr inbounds nuw i8, ptr %.074, i64 1
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !62
  %i.bs = zext i8 %i.br to i32
  %i.bt = sub nsw i32 %i.bs, %i.ak
  %i.bu = mul nsw i32 %i.bt, %i.bp
  %i.bv = load i16, ptr %i.m, align 2, !tbaa !45
  %i.bw = sext i16 %i.bv to i32
  %i.bx = load i8, ptr %.0, align 1, !tbaa !62
  %i.by = zext i8 %i.bx to i32
  %i.bz = sub nsw i32 %i.by, %i.ak
  %i.ca = mul nsw i32 %i.bz, %i.bw
  %i.cb = add nsw i32 %i.am, 64
  %i.cc = add nsw i32 %i.cb, %i.at
  %i.cd = add nsw i32 %i.cc, %i.ba
  %i.ce = add nsw i32 %i.cd, %i.bh
  %i.cf = add nsw i32 %i.ce, %i.bn
  %i.cg = add nsw i32 %i.cf, %i.bu
  %i.ch = add nsw i32 %i.cg, %i.ca
  %i.ci = ashr i32 %i.ch, 7
  %i.cj = tail call i32 @llvm.smax.i32(i32 %i.ci, i32 -128)
  %.0.i = tail call i32 @llvm.smin.i32(i32 %i.cj, i32 127)
  %i.ck = load i8, ptr %i.ae, align 1, !tbaa !62
  %i.cl = zext i8 %i.ck to i32
  %i.cm = add nsw i32 %.0.i, %i.cl                ; 3 uses
  %.not.i = icmp ult i32 %i.cm, 256
  %isnotneg.i = icmp sgt i32 %i.cm, -1
  %i.cn = sext i1 %isnotneg.i to i8
  %i.co = trunc nuw i32 %i.cm to i8
  %.0.i84 = select i1 %.not.i, i8 %i.co, i8 %i.cn
  store i8 %.0.i84, ptr %i.ae, align 1, !tbaa !62
  br label %11

11:                                               ; preds = %10, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %10, !llvm.loop !2265
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @alf_classify_8(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr nofree noundef captures(none) %7) #2 {
bb.a:
  %i.a = add nsw i32 %4, 4                        ; 2 uses
  %i.b = sdiv i32 %i.a, 2
  %i.c = shl nsw i32 %i.b, 2                      ; 2 uses
  %.neg = mul i64 %3, -3
  %i.d = getelementptr i8, ptr %2, i64 %.neg
  %i.e = getelementptr i8, ptr %i.d, i64 -2
  %i.f = icmp sgt i32 %5, -4
  br i1 %i.f, label %.lr.ph228, label %._crit_edge252.split

.lr.ph228:                                        ; preds = %bb.a
  %i.g = icmp sgt i32 %4, -4
  br i1 %i.g, label %.lr.ph.preheader, label %.preheader222

.lr.ph.preheader:                                 ; preds = %.lr.ph228
  %i.h = add nsw i32 %6, 2
  %i.i = zext nneg i32 %i.a to i64
  %i.j = zext i32 %i.h to i64
  %i.k = zext i32 %6 to i64
  %i.l = add nsw i32 %5, 2
  %i.m = sext i32 %i.l to i64
  br label %.lr.ph

.preheader222:                                    ; preds = %._crit_edge, %.lr.ph228
  %i.n = icmp sgt i32 %5, 0
  br i1 %i.n, label %.lr.ph251, label %._crit_edge252.split

.lr.ph251:                                        ; preds = %.preheader222
  %i.o = icmp sgt i32 %4, 0
  %i.p = sext i32 %i.c to i64                     ; 3 uses
  br i1 %i.o, label %.lr.ph245.preheader, label %._crit_edge252.split

.lr.ph245.preheader:                              ; preds = %.lr.ph251
  %i.q = zext nneg i32 %4 to i64
  br label %.lr.ph245

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv261 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next262, %._crit_edge ] ; 5 uses
  %.0165226 = phi ptr [ %7, %.lr.ph.preheader ], [ %i.de, %._crit_edge ]
  %i.r = mul nsw i64 %3, %indvars.iv261
  %i.s = getelementptr inbounds i8, ptr %i.e, i64 %i.r ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 %3 ; 3 uses
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 %3 ; 2 uses
  %i.v = icmp eq i64 %indvars.iv261, %i.k         ; 2 uses
  %i.w = icmp ne i64 %indvars.iv261, %i.j
  %.0169.idx = select i1 %i.v, i64 0, i64 %3
  %.0169 = getelementptr inbounds i8, ptr %i.u, i64 %.0169.idx
  %i.x = select i1 %i.v, i1 true, i1 %i.w
  %.0168 = select i1 %i.x, ptr %i.s, ptr %i.t
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b
  %indvars.iv.next262 = add nuw nsw i64 %indvars.iv261, 2
  %i.y = icmp slt i64 %indvars.iv261, %i.m
  br i1 %i.y, label %.lr.ph, label %.preheader222, !llvm.loop !2266

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 5 uses
  %.1166224 = phi ptr [ %.0165226, %.lr.ph ], [ %i.de, %bb.b ] ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0168, i64 %indvars.iv ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 %indvars.iv ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 %indvars.iv ; 5 uses
  %i.ac = load i8, ptr %i.aa, align 1, !tbaa !62
  %i.ad = zext i8 %i.ac to i32
  %i.ae = shl nuw nsw i32 %i.ad, 1                ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 1 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 1 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0169, i64 %indvars.iv ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 1
  %i.aj = load i8, ptr %i.ag, align 1, !tbaa !62
  %i.ak = zext i8 %i.aj to i32
  %i.al = shl nuw nsw i32 %i.ak, 1                ; 4 uses
  %i.am = load i8, ptr %i.z, align 1, !tbaa !62
  %i.an = zext i8 %i.am to i32
  %i.ao = load i8, ptr %i.ab, align 1, !tbaa !62
  %i.ap = zext i8 %i.ao to i32
  %i.aq = add nuw nsw i32 %i.an, %i.ap
  %i.ar = sub nsw i32 %i.ae, %i.aq
  %i.as = tail call i32 @llvm.abs.i32(i32 %i.ar, i1 true)
  %i.at = load i8, ptr %i.af, align 1, !tbaa !62
  %i.au = zext i8 %i.at to i32
  %i.av = load i8, ptr %i.ai, align 1, !tbaa !62
  %i.aw = zext i8 %i.av to i32
  %i.ax = add nuw nsw i32 %i.au, %i.aw
  %i.ay = sub nsw i32 %i.al, %i.ax
  %i.az = tail call i32 @llvm.abs.i32(i32 %i.ay, i1 true)
  %i.ba = add nuw nsw i32 %i.az, %i.as
  store i32 %i.ba, ptr %.1166224, align 4, !tbaa !555
  %i.bb = getelementptr inbounds i8, ptr %i.aa, i64 -1
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !62
  %i.bd = zext i8 %i.bc to i32
  %i.be = load i8, ptr %i.af, align 1, !tbaa !62
  %i.bf = zext i8 %i.be to i32
  %i.bg = add nuw nsw i32 %i.bd, %i.bf
  %i.bh = sub nsw i32 %i.ae, %i.bg
  %i.bi = tail call i32 @llvm.abs.i32(i32 %i.bh, i1 true)
  %i.bj = load i8, ptr %i.ab, align 1, !tbaa !62
  %i.bk = zext i8 %i.bj to i32
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ab, i64 2
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !62
  %i.bn = zext i8 %i.bm to i32
  %i.bo = add nuw nsw i32 %i.bk, %i.bn
  %i.bp = sub nsw i32 %i.al, %i.bo
  %i.bq = tail call i32 @llvm.abs.i32(i32 %i.bp, i1 true)
  %i.br = add nuw nsw i32 %i.bq, %i.bi
  %i.bs = getelementptr inbounds nuw i8, ptr %.1166224, i64 4
  store i32 %i.br, ptr %i.bs, align 4, !tbaa !555
  %i.bt = getelementptr inbounds i8, ptr %i.z, i64 -1
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !62
  %i.bv = zext i8 %i.bu to i32
  %i.bw = load i8, ptr %i.ag, align 1, !tbaa !62
  %i.bx = zext i8 %i.bw to i32
  %i.by = add nuw nsw i32 %i.bv, %i.bx
  %i.bz = sub nsw i32 %i.ae, %i.by
  %i.ca = tail call i32 @llvm.abs.i32(i32 %i.bz, i1 true)
  %i.cb = load i8, ptr %i.aa, align 1, !tbaa !62
  %i.cc = zext i8 %i.cb to i32
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ah, i64 2
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !62
  %i.cf = zext i8 %i.ce to i32
  %i.cg = add nuw nsw i32 %i.cc, %i.cf
  %i.ch = sub nsw i32 %i.al, %i.cg
  %i.ci = tail call i32 @llvm.abs.i32(i32 %i.ch, i1 true)
  %i.cj = add nuw nsw i32 %i.ci, %i.ca
  %i.ck = getelementptr inbounds nuw i8, ptr %.1166224, i64 8
  store i32 %i.cj, ptr %i.ck, align 4, !tbaa !555
  %i.cl = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !62
  %i.cn = zext i8 %i.cm to i32
  %i.co = getelementptr inbounds i8, ptr %i.ab, i64 -1
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !62
  %i.cq = zext i8 %i.cp to i32
  %i.cr = add nuw nsw i32 %i.cn, %i.cq
  %i.cs = sub nsw i32 %i.ae, %i.cr
  %i.ct = tail call i32 @llvm.abs.i32(i32 %i.cs, i1 true)
  %i.cu = getelementptr inbounds nuw i8, ptr %i.aa, i64 2
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !62
  %i.cw = zext i8 %i.cv to i32
  %i.cx = load i8, ptr %i.ah, align 1, !tbaa !62
  %i.cy = zext i8 %i.cx to i32
  %i.cz = add nuw nsw i32 %i.cw, %i.cy
  %i.da = sub nsw i32 %i.al, %i.cz
  %i.db = tail call i32 @llvm.abs.i32(i32 %i.da, i1 true)
  %i.dc = add nuw nsw i32 %i.db, %i.ct
  %i.dd = getelementptr inbounds nuw i8, ptr %.1166224, i64 12
  store i32 %i.dc, ptr %i.dd, align 4, !tbaa !555
  %i.de = getelementptr inbounds nuw i8, ptr %.1166224, i64 16 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.df = icmp samesign ult i64 %indvars.iv.next, %i.i
  br i1 %i.df, label %bb.b, label %._crit_edge, !llvm.loop !2267

..loopexit_crit_edge:                             ; preds = %alf_get_idx_8.exit
  %i.dg = icmp slt i32 %i.dh, %5
  br i1 %i.dg, label %.lr.ph245, label %._crit_edge252.split, !llvm.loop !2268

._crit_edge252.split:                             ; preds = %..loopexit_crit_edge, %bb.a, %.lr.ph251, %.preheader222
  ret void

.lr.ph245:                                        ; preds = %.lr.ph245.preheader, %..loopexit_crit_edge
  %.0157250 = phi ptr [ %i.gv, %..loopexit_crit_edge ], [ %0, %.lr.ph245.preheader ]
  %.0158249 = phi ptr [ %i.gw, %..loopexit_crit_edge ], [ %1, %.lr.ph245.preheader ]
  %.0164248 = phi i32 [ %i.dh, %..loopexit_crit_edge ], [ 0, %.lr.ph245.preheader ] ; 3 uses
  %i.dh = add nuw nsw i32 %.0164248, 4            ; 3 uses
  %.not = icmp eq i32 %i.dh, %6                   ; 2 uses
  %i.di = icmp eq i32 %.0164248, %6               ; 3 uses
  %.0163 = zext i1 %i.di to i32
  %i.dj = or i1 %i.di, %.not
  %.0161 = select i1 %i.dj, i32 3, i32 2
  %i.dk = lshr exact i32 %.0164248, 1
  %i.dl = or disjoint i32 %i.dk, %.0163
  %i.dm = mul nuw nsw i32 %i.dl, %i.c
  %i.dn = zext nneg i32 %i.dm to i64
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %i.dn
  %i.dp = select i1 %i.di, i1 true, i1 %.not
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph245, %alf_get_idx_8.exit
  %indvars.iv264 = phi i64 [ 0, %.lr.ph245 ], [ %indvars.iv.next265, %alf_get_idx_8.exit ] ; 2 uses
  %.1243 = phi ptr [ %.0157250, %.lr.ph245 ], [ %i.gv, %alf_get_idx_8.exit ] ; 3 uses
  %.1159242 = phi ptr [ %.0158249, %.lr.ph245 ], [ %i.gw, %alf_get_idx_8.exit ] ; 2 uses
  %.idx = shl nuw nsw i64 %indvars.iv264, 3
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 %.idx ; 5 uses
  %i.dr = getelementptr [4 x i8], ptr %i.dq, i64 %i.p ; 5 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 48
  %i.dt = load <4 x i32>, ptr %i.ds, align 4, !tbaa !555
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 32
  %i.dv = load <4 x i32>, ptr %i.du, align 4, !tbaa !555
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %i.dx = load <4 x i32>, ptr %i.dw, align 4, !tbaa !555
  %i.dy = load <4 x i32>, ptr %i.dr, align 4, !tbaa !555
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dq, i64 48
  %i.ea = load <4 x i32>, ptr %i.dz, align 4, !tbaa !555
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dq, i64 32
  %i.ec = load <4 x i32>, ptr %i.eb, align 4, !tbaa !555
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.ee = load <4 x i32>, ptr %i.ed, align 4, !tbaa !555
end_hunk_2
