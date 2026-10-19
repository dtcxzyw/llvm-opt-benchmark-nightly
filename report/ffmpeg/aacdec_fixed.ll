Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/aacdec_fixed?download=true
inline.NumInlined: 71
inline.NumDeleted: 24
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 24
begin_hunk_0_@apply_ltp_fixed:bb.a
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %reass.sub.prol = sub nsw i64 %indvars.iv.ph, %i.m
  %i.am = shl i64 %reass.sub.prol, 32
  %sext.prol = add i64 %i.am, 8796093022208
  %i.an = ashr exact i64 %sext.prol, 30
  %i.ao = getelementptr inbounds i8, ptr %i.l, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !22
  %i.aq = sext i32 %i.ap to i64
  %i.ar = load i32, ptr %i.n, align 4, !tbaa !22
  %i.as = sext i32 %i.ar to i64
  %i.at = mul nsw i64 %i.as, %i.aq
  %i.au = add nsw i64 %i.at, 536870912
  %i.av = lshr i64 %i.au, 30
  %i.aw = trunc i64 %i.av to i32
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.ph
  store i32 %i.aw, ptr %i.ax, align 4, !tbaa !28
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.ay = add nsw i64 %wide.trip.count, -1
  %i.az = icmp eq i64 %indvars.iv.ph, %i.ay
  br i1 %i.az, label %._crit_edge, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %reass.sub = sub i64 %indvars.iv, %i.m
  %i.ba = shl i64 %reass.sub, 32
  %sext = add i64 %i.ba, 8796093022208
  %i.bb = ashr exact i64 %sext, 30
  %i.bc = getelementptr inbounds i8, ptr %i.l, i64 %i.bb
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !22
  %i.be = sext i32 %i.bd to i64
  %i.bf = load i32, ptr %i.n, align 4, !tbaa !22
  %i.bg = sext i32 %i.bf to i64
  %i.bh = mul nsw i64 %i.bg, %i.be
  %i.bi = add nsw i64 %i.bh, 536870912
  %i.bj = lshr i64 %i.bi, 30
  %i.bk = trunc i64 %i.bj to i32
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  store i32 %i.bk, ptr %i.bl, align 4, !tbaa !28
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %reass.sub.1 = sub i64 %indvars.iv.next, %i.m
  %i.bm = shl i64 %reass.sub.1, 32
  %sext.1 = add i64 %i.bm, 8796093022208
  %i.bn = ashr exact i64 %sext.1, 30
  %i.bo = getelementptr inbounds i8, ptr %i.l, i64 %i.bn
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !22
  %i.bq = sext i32 %i.bp to i64
  %i.br = load i32, ptr %i.n, align 4, !tbaa !22
  %i.bs = sext i32 %i.br to i64
  %i.bt = mul nsw i64 %i.bs, %i.bq
  %i.bu = add nsw i64 %i.bt, 536870912
  %i.bv = lshr i64 %i.bu, 30
  %i.bw = trunc i64 %i.bv to i32
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next
  store i32 %i.bw, ptr %i.bx, align 4, !tbaa !28
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !112

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.b
  %.043.lcssa = phi i32 [ 0, %bb.b ], [ %.0, %middle.block ], [ %.0, %scalar.ph ], [ %.0, %scalar.ph.prol.loopexit ] ; 2 uses
  %i.by = zext nneg i32 %.043.lcssa to i64
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.by
  %i.ca = sub nsw i32 2048, %.043.lcssa
  %i.cb = zext nneg i32 %i.ca to i64
  %i.cc = shl nuw nsw i64 %i.cb, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.bz, i8 0, i64 %i.cc, i1 false)
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ce = load i8, ptr %i.cd, align 4, !tbaa !22
  %.not.i = icmp eq i8 %i.ce, 0                   ; 2 uses
  %i.cf = select i1 %.not.i, ptr @sine_1024_fixed, ptr @aac_kbd_long_1024_fixed
  %i.cg = select i1 %.not.i, ptr @sine_128_fixed, ptr @aac_kbd_short_128_fixed
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !22
  %.not28.i = icmp eq i8 %i.ci, 0                 ; 2 uses
  %i.cj = load i32, ptr %i.c, align 4, !tbaa !28
  %.not29.i = icmp eq i32 %i.cj, 3
  br i1 %.not29.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.ck = select i1 %.not28.i, ptr @sine_1024_fixed, ptr @aac_kbd_long_1024_fixed
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 9536
  %i.cm = load ptr, ptr %i.cl, align 16, !tbaa !22
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !121
  tail call void %i.co(ptr noundef %i.f, ptr noundef %i.f, ptr noundef nonnull %i.ck, i32 noundef 1024) #14, !inline_history !113
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge
  %i.cp = select i1 %.not28.i, ptr @sine_128_fixed, ptr @aac_kbd_short_128_fixed
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1792) %i.f, i8 0, i64 1792, i1 false)
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 9536
  %i.cr = load ptr, ptr %i.cq, align 16, !tbaa !22
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !121
  %i.cu = getelementptr inbounds nuw i8, ptr %i.f, i64 1792 ; 2 uses
  tail call void %i.ct(ptr noundef nonnull %i.cu, ptr noundef nonnull %i.cu, ptr noundef nonnull %i.cp, i32 noundef 128) #14, !inline_history !113
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.cv = load i32, ptr %i.c, align 4, !tbaa !28
  %.not30.i = icmp eq i32 %i.cv, 1
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 9536
  %i.cx = load ptr, ptr %i.cw, align 16, !tbaa !22
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !46 ; 2 uses
  br i1 %.not30.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.da = getelementptr inbounds nuw i8, ptr %i.f, i64 4096 ; 2 uses
  tail call void %i.cz(ptr noundef nonnull %i.da, ptr noundef nonnull %i.da, ptr noundef nonnull %i.cf, i32 noundef 1024) #14, !inline_history !113
  br label %windowing_and_mdct_ltp_fixed.exit

bb.g:                                             ; preds = %bb.e
  %i.db = getelementptr inbounds nuw i8, ptr %i.f, i64 5888 ; 2 uses
  tail call void %i.cz(ptr noundef nonnull %i.db, ptr noundef nonnull %i.db, ptr noundef nonnull %i.cg, i32 noundef 128) #14, !inline_history !113
  %i.dc = getelementptr inbounds nuw i8, ptr %i.f, i64 6400
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1792) %i.dc, i8 0, i64 1792, i1 false)
  br label %windowing_and_mdct_ltp_fixed.exit

windowing_and_mdct_ltp_fixed.exit:                ; preds = %bb.f, %bb.g
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 9528
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !122
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 9456
  %i.dg = load ptr, ptr %i.df, align 16, !tbaa !123
  tail call void %i.de(ptr noundef %i.dg, ptr noundef nonnull %i.g, ptr noundef nonnull %i.f, i64 noundef 4) #14, !inline_history !113
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 992 ; 2 uses
  %i.di = load i32, ptr %i.dh, align 16, !tbaa !124
  %.not46 = icmp eq i32 %i.di, 0
  br i1 %.not46, label %bb.i, label %bb.h

bb.h:                                             ; preds = %windowing_and_mdct_ltp_fixed.exit
  tail call void @apply_tns_fixed(ptr noundef nonnull %i.g, ptr noundef nonnull %i.dh, ptr noundef nonnull %1, i32 noundef 0)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %windowing_and_mdct_ltp_fixed.exit
  %i.dj = load i8, ptr %1, align 16, !tbaa !47    ; 2 uses
  %.not57 = icmp eq i8 %i.dj, 0
  br i1 %.not57, label %.loopexit49, label %.lr.ph56

.lr.ph56:                                         ; preds = %bb.i
  %narrow48 = tail call i8 @llvm.umin.i8(i8 %i.dj, i8 40)
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 5520
  %wide.trip.count65 = zext nneg i8 %narrow48 to i64
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph56, %.loopexit
  %indvars.iv62 = phi i64 [ 0, %.lr.ph56 ], [ %indvars.iv.next63, %.loopexit ] ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 %indvars.iv62
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !22
  %.not47 = icmp eq i8 %i.dn, 0
  br i1 %.not47, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.do = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv62 ; 2 uses
  %i.dp = load i16, ptr %i.do, align 2, !tbaa !33 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 2 ; 2 uses
  %i.dr = load i16, ptr %i.dq, align 2, !tbaa !33
  %i.ds = icmp ult i16 %i.dp, %i.dr
  br i1 %i.ds, label %.lr.ph53.preheader, label %.loopexit

.lr.ph53.preheader:                               ; preds = %bb.k
  %i.dt = zext i16 %i.dp to i64
  br label %.lr.ph53

.lr.ph53:                                         ; preds = %.lr.ph53.preheader, %.lr.ph53
  %indvars.iv59 = phi i64 [ %i.dt, %.lr.ph53.preheader ], [ %indvars.iv.next60, %.lr.ph53 ] ; 3 uses
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv59
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !28
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %indvars.iv59 ; 2 uses
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !22
  %i.dy = add i32 %i.dx, %i.dv
  store i32 %i.dy, ptr %i.dw, align 4, !tbaa !22
  %indvars.iv.next60 = add nuw nsw i64 %indvars.iv59, 1 ; 2 uses
  %i.dz = load i16, ptr %i.dq, align 2, !tbaa !33
  %i.ea = zext i16 %i.dz to i64
  %i.eb = icmp samesign ult i64 %indvars.iv.next60, %i.ea
  br i1 %i.eb, label %.lr.ph53, label %.loopexit, !llvm.loop !114

.loopexit:                                        ; preds = %.lr.ph53, %bb.k, %bb.j
  %indvars.iv.next63 = add nuw nsw i64 %indvars.iv62, 1 ; 2 uses
  %exitcond66.not = icmp eq i64 %indvars.iv.next63, %wide.trip.count65
  br i1 %exitcond66.not, label %.loopexit49, label %bb.j, !llvm.loop !115

.loopexit49:                                      ; preds = %.loopexit, %bb.i, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @update_ltp_fixed(ptr noundef %0, ptr noundef %1) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 5520 ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.c = load i8, ptr %i.b, align 4, !tbaa !22
  %.not = icmp eq i8 %i.c, 0                      ; 8 uses
  %i.d = select i1 %.not, ptr @sine_1024_fixed, ptr @aac_kbd_long_1024_fixed ; 4 uses
  %i.e = select i1 %.not, ptr @sine_128_fixed, ptr @aac_kbd_short_128_fixed ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !28
  switch i32 %i.g, label %vector.memcheck125 [
    i32 2, label %vector.memcheck96
    i32 1, label %vector.memcheck
  ]

vector.memcheck96:                                ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 13712
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(2048) %i.a, ptr noundef nonnull align 4 dereferenceable(2048) %i.h, i64 2048, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 7824 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1792) %i.i, i8 0, i64 1792, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 9536
  %i.k = load ptr, ptr %i.j, align 16, !tbaa !22
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !46
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 7312
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4784 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8624 ; 2 uses
  %2 = select i1 %.not, ptr getelementptr inbounds nuw (i8, ptr @sine_128_fixed, i64 256), ptr getelementptr inbounds nuw (i8, ptr @aac_kbd_short_128_fixed, i64 256)
  tail call void %i.m(ptr noundef nonnull %i.n, ptr noundef nonnull %i.p, ptr noundef nonnull %2, i32 noundef 64) #14
  %i.q = getelementptr i8, ptr %1, i64 7568       ; 2 uses
  %i.r = getelementptr i8, ptr %0, i64 8880
  %3 = select i1 %.not, ptr getelementptr inbounds nuw (i8, ptr @sine_128_fixed, i64 256), ptr getelementptr inbounds nuw (i8, ptr @aac_kbd_short_128_fixed, i64 256)
  %bound097 = icmp ult ptr %i.q, %i.r
  %bound198 = icmp ult ptr %i.p, %i.i
  %found.conflict99 = and i1 %bound097, %bound198
  %bound0100 = icmp ult ptr %i.q, %3
  %bound1101 = icmp ult ptr %i.e, %i.i
  %found.conflict102 = and i1 %bound0100, %bound1101
  %conflict.rdx103 = or i1 %found.conflict99, %found.conflict102
  br i1 %conflict.rdx103, label %scalar.ph95, label %vector.body105

vector.body105:                                   ; preds = %vector.memcheck96, %vector.body105
  %index106 = phi i64 [ %index.next111, %vector.body105 ], [ 0, %vector.memcheck96 ] ; 4 uses
  %i.s = sub nuw nsw i64 1023, %index106
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.s
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -12
  %wide.load107.a = load <4 x i32>, ptr %i.u, align 4, !tbaa !22, !alias.scope !143
  %reverse108.a = shufflevector <4 x i32> %wide.load107.a, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.v = sext <4 x i32> %reverse108.a to <4 x i64>
  %i.w = sub nuw nsw i64 63, %index106
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.w
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 -12
  %wide.load109 = load <4 x i32>, ptr %i.y, align 16, !tbaa !28, !alias.scope !144
  %reverse110 = shufflevector <4 x i32> %wide.load109, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.z = sext <4 x i32> %reverse110 to <4 x i64>
  %i.aa = mul nsw <4 x i64> %i.z, %i.v
  %i.ab = add nsw <4 x i64> %i.aa, splat (i64 1073741824)
  %i.ac = lshr <4 x i64> %i.ab, splat (i64 31)
  %i.ad = trunc <4 x i64> %i.ac to <4 x i32>
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index106
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 2048
  store <4 x i32> %i.ad, ptr %i.af, align 4, !tbaa !28, !alias.scope !145, !noalias !146
  %index.next111 = add nuw i64 %index106, 4       ; 2 uses
  %i.ag = icmp eq i64 %index.next111, 64
  br i1 %i.ag, label %.loopexit, label %vector.body105, !llvm.loop !129

scalar.ph95:                                      ; preds = %vector.memcheck96, %scalar.ph95
  %indvars.iv63 = phi i64 [ %indvars.iv.next64.1, %scalar.ph95 ], [ 0, %vector.memcheck96 ] ; 7 uses
  %i.ah = sub nuw nsw i64 1023, %indvars.iv63
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !22
  %i.ak = sext i32 %i.aj to i64
  %i.al = sub nuw nsw i64 63, %indvars.iv63
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !28
  %i.ao = sext i32 %i.an to i64
  %i.ap = mul nsw i64 %i.ao, %i.ak
  %i.aq = add nsw i64 %i.ap, 1073741824
  %i.ar = lshr i64 %i.aq, 31
  %i.as = trunc i64 %i.ar to i32
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv63
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 2048
  store i32 %i.as, ptr %i.au, align 4, !tbaa !28
  %i.av = sub nuw nsw i64 1022, %indvars.iv63
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.av
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !22
  %i.ay = sext i32 %i.ax to i64
  %i.az = sub nuw nsw i64 62, %indvars.iv63
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !28
  %i.bc = sext i32 %i.bb to i64
  %i.bd = mul nsw i64 %i.bc, %i.ay
  %i.be = add nsw i64 %i.bd, 1073741824
  %i.bf = lshr i64 %i.be, 31
  %i.bg = trunc i64 %i.bf to i32
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv63
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 2052
  store i32 %i.bg, ptr %i.bi, align 4, !tbaa !28
  %indvars.iv.next64.1 = add nuw nsw i64 %indvars.iv63, 2 ; 2 uses
  %exitcond66.not.1 = icmp eq i64 %indvars.iv.next64.1, 64
  br i1 %exitcond66.not.1, label %.loopexit, label %scalar.ph95, !llvm.loop !130

vector.memcheck:                                  ; preds = %bb.a
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 4784 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 6832
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1792) %i.a, ptr noundef nonnull align 16 dereferenceable(1792) %i.bk, i64 1792, i1 false)
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 7824 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1792) %i.bl, i8 0, i64 1792, i1 false)
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 9536
  %i.bn = load ptr, ptr %i.bm, align 16, !tbaa !22
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !46
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 7312
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 8624 ; 2 uses
  %4 = select i1 %.not, ptr getelementptr inbounds nuw (i8, ptr @sine_128_fixed, i64 256), ptr getelementptr inbounds nuw (i8, ptr @aac_kbd_short_128_fixed, i64 256)
  tail call void %i.bp(ptr noundef nonnull %i.bq, ptr noundef nonnull %i.br, ptr noundef nonnull %4, i32 noundef 64) #14
  %i.bs = getelementptr i8, ptr %1, i64 7568      ; 2 uses
  %i.bt = getelementptr i8, ptr %0, i64 8880
  %5 = select i1 %.not, ptr getelementptr inbounds nuw (i8, ptr @sine_128_fixed, i64 256), ptr getelementptr inbounds nuw (i8, ptr @aac_kbd_short_128_fixed, i64 256)
  %bound0 = icmp ult ptr %i.bs, %i.bt
  %bound1 = icmp ult ptr %i.br, %i.bl
  %found.conflict = and i1 %bound0, %bound1
  %bound080 = icmp ult ptr %i.bs, %5
  %bound181 = icmp ult ptr %i.e, %i.bl
  %found.conflict82 = and i1 %bound080, %bound181
  %conflict.rdx = or i1 %found.conflict, %found.conflict82
  br i1 %conflict.rdx, label %scalar.ph, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 4 uses
  %i.bu = sub nuw nsw i64 1023, %index
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.bu
  %i.bw = getelementptr inbounds i8, ptr %i.bv, i64 -12
  %wide.load = load <4 x i32>, ptr %i.bw, align 4, !tbaa !22, !alias.scope !147
  %reverse = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.bx = sext <4 x i32> %reverse to <4 x i64>
  %i.by = sub nuw nsw i64 63, %index
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.by
  %i.ca = getelementptr inbounds i8, ptr %i.bz, i64 -12
  %wide.load83 = load <4 x i32>, ptr %i.ca, align 16, !tbaa !28, !alias.scope !148
  %reverse84 = shufflevector <4 x i32> %wide.load83, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.cb = sext <4 x i32> %reverse84 to <4 x i64>
  %i.cc = mul nsw <4 x i64> %i.cb, %i.bx
  %i.cd = add nsw <4 x i64> %i.cc, splat (i64 1073741824)
  %i.ce = lshr <4 x i64> %i.cd, splat (i64 31)
  %i.cf = trunc <4 x i64> %i.ce to <4 x i32>
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 2048
  store <4 x i32> %i.cf, ptr %i.ch, align 4, !tbaa !28, !alias.scope !149, !noalias !150
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ci = icmp eq i64 %index.next, 64
  br i1 %i.ci, label %.loopexit, label %vector.body, !llvm.loop !135

scalar.ph:                                        ; preds = %vector.memcheck, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ 0, %vector.memcheck ] ; 7 uses
  %i.cj = sub nuw nsw i64 1023, %indvars.iv
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.cj
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !22
  %i.cm = sext i32 %i.cl to i64
  %i.cn = sub nuw nsw i64 63, %indvars.iv
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.cn
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !28
  %i.cq = sext i32 %i.cp to i64
  %i.cr = mul nsw i64 %i.cq, %i.cm
  %i.cs = add nsw i64 %i.cr, 1073741824
  %i.ct = lshr i64 %i.cs, 31
  %i.cu = trunc i64 %i.ct to i32
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 2048
  store i32 %i.cu, ptr %i.cw, align 4, !tbaa !28
  %i.cx = sub nuw nsw i64 1022, %indvars.iv
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.cx
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !22
  %i.da = sext i32 %i.cz to i64
  %i.db = sub nuw nsw i64 62, %indvars.iv
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.db
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !28
  %i.de = sext i32 %i.dd to i64
  %i.df = mul nsw i64 %i.de, %i.da
  %i.dg = add nsw i64 %i.df, 1073741824
  %i.dh = lshr i64 %i.dg, 31
  %i.di = trunc i64 %i.dh to i32
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 2052
  store i32 %i.di, ptr %i.dk, align 4, !tbaa !28
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 64
  br i1 %exitcond.not.1, label %.loopexit, label %scalar.ph, !llvm.loop !136

vector.memcheck125:                               ; preds = %bb.a
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 9536
  %i.dm = load ptr, ptr %i.dl, align 16, !tbaa !22
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !46
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 4784 ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 6832 ; 2 uses
  %6 = select i1 %.not, ptr getelementptr inbounds nuw (i8, ptr @sine_1024_fixed, i64 2048), ptr getelementptr inbounds nuw (i8, ptr @aac_kbd_long_1024_fixed, i64 2048)
  tail call void %i.do(ptr noundef nonnull %i.a, ptr noundef nonnull %i.dq, ptr noundef nonnull %6, i32 noundef 512) #14
  %i.dr = getelementptr i8, ptr %1, i64 7568      ; 2 uses
  %i.ds = getelementptr i8, ptr %1, i64 9616      ; 2 uses
  %i.dt = getelementptr i8, ptr %0, i64 8880
  %7 = select i1 %.not, ptr getelementptr inbounds nuw (i8, ptr @sine_1024_fixed, i64 2048), ptr getelementptr inbounds nuw (i8, ptr @aac_kbd_long_1024_fixed, i64 2048)
  %bound0126.a = icmp ult ptr %i.dr, %i.dt
  %bound1127.a = icmp ult ptr %i.dq, %i.ds
  %found.conflict128.a = and i1 %bound0126.a, %bound1127.a
  %bound0129 = icmp ult ptr %i.dr, %7
  %bound1130 = icmp ult ptr %i.d, %i.ds
  %found.conflict131 = and i1 %bound0129, %bound1130
  %conflict.rdx132 = or i1 %found.conflict128.a, %found.conflict131
  br i1 %conflict.rdx132, label %scalar.ph124, label %vector.body134

vector.body134:                                   ; preds = %vector.memcheck125, %vector.body134
  %index135 = phi i64 [ %index.next140, %vector.body134 ], [ 0, %vector.memcheck125 ] ; 4 uses
  %i.du = sub nuw nsw i64 1023, %index135
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %i.du
  %i.dw = getelementptr inbounds i8, ptr %i.dv, i64 -12
  %wide.load136 = load <4 x i32>, ptr %i.dw, align 4, !tbaa !22, !alias.scope !151
  %reverse137 = shufflevector <4 x i32> %wide.load136, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.dx = sext <4 x i32> %reverse137 to <4 x i64>
  %i.dy = sub nuw nsw i64 511, %index135
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.dy
  %i.ea = getelementptr inbounds i8, ptr %i.dz, i64 -12
  %wide.load138 = load <4 x i32>, ptr %i.ea, align 16, !tbaa !28, !alias.scope !152
  %reverse139 = shufflevector <4 x i32> %wide.load138, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.eb = sext <4 x i32> %reverse139 to <4 x i64>
  %i.ec = mul nsw <4 x i64> %i.eb, %i.dx
  %i.ed = add nsw <4 x i64> %i.ec, splat (i64 1073741824)
  %i.ee = lshr <4 x i64> %i.ed, splat (i64 31)
  %i.ef = trunc <4 x i64> %i.ee to <4 x i32>
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index135
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 2048
  store <4 x i32> %i.ef, ptr %i.eh, align 4, !tbaa !28, !alias.scope !153, !noalias !154
  %index.next140 = add nuw i64 %index135, 4       ; 2 uses
  %i.ei = icmp eq i64 %index.next140, 512
  br i1 %i.ei, label %.loopexit, label %vector.body134, !llvm.loop !141

scalar.ph124:                                     ; preds = %vector.memcheck125, %scalar.ph124
  %indvars.iv67 = phi i64 [ %indvars.iv.next68.1, %scalar.ph124 ], [ 0, %vector.memcheck125 ] ; 7 uses
  %i.ej = sub nuw nsw i64 1023, %indvars.iv67
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %i.ej
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !22
  %i.em = sext i32 %i.el to i64
  %i.en = sub nuw nsw i64 511, %indvars.iv67
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.en
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !28
  %i.eq = sext i32 %i.ep to i64
  %i.er = mul nsw i64 %i.eq, %i.em
  %i.es = add nsw i64 %i.er, 1073741824
  %i.et = lshr i64 %i.es, 31
  %i.eu = trunc i64 %i.et to i32
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv67
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 2048
  store i32 %i.eu, ptr %i.ew, align 4, !tbaa !28
  %i.ex = sub nuw nsw i64 1022, %indvars.iv67
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %i.ex
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !22
  %i.fa = sext i32 %i.ez to i64
  %i.fb = sub nuw nsw i64 510, %indvars.iv67
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.fb
  %i.fd = load i32, ptr %i.fc, align 8, !tbaa !28
  %i.fe = sext i32 %i.fd to i64
  %i.ff = mul nsw i64 %i.fe, %i.fa
  %i.fg = add nsw i64 %i.ff, 1073741824
  %i.fh = lshr i64 %i.fg, 31
  %i.fi = trunc i64 %i.fh to i32
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv67
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 2052
  store i32 %i.fi, ptr %i.fk, align 4, !tbaa !28
  %indvars.iv.next68.1 = add nuw nsw i64 %indvars.iv67, 2 ; 2 uses
  %exitcond70.not.1 = icmp eq i64 %indvars.iv.next68.1, 512
  br i1 %exitcond70.not.1, label %.loopexit, label %scalar.ph124, !llvm.loop !142

.loopexit:                                        ; preds = %vector.body, %scalar.ph, %vector.body105, %scalar.ph95, %vector.body134, %scalar.ph124
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 28048
  %i.fm = getelementptr inbounds nuw i8, ptr %1, i64 32144 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.fl, ptr noundef nonnull align 16 dereferenceable(4096) %i.fm, i64 4096, i1 false)
  %i.fn = getelementptr inbounds nuw i8, ptr %1, i64 40344
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !22
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.fm, ptr noundef nonnull align 4 dereferenceable(4096) %i.fo, i64 4096, i1 false)
  %i.fp = getelementptr inbounds nuw i8, ptr %1, i64 36240
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.fp, ptr noundef nonnull align 16 dereferenceable(4096) %i.a, i64 4096, i1 false)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @apply_prediction_fixed(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !161
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40336
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !22  ; 4 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %indvars.iv.i = phi i64 [ 0, %bb.b ], [ %indvars.iv.next.i.3, %bb.c ] ; 5 uses
  %i.e = getelementptr inbounds nuw [64 x i8], ptr %i.d, i64 %indvars.iv.i ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  store <4 x i32> <i32 536870912, i32 1, i32 536870912, i32 1>, ptr %i.g, align 4, !tbaa !28
  %i.h = getelementptr inbounds nuw [64 x i8], ptr %i.d, i64 %indvars.iv.i ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  store <4 x i32> <i32 536870912, i32 1, i32 536870912, i32 1>, ptr %i.k, align 4, !tbaa !28
  %i.l = getelementptr inbounds nuw [64 x i8], ptr %i.d, i64 %indvars.iv.i ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 128
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 160
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  store <4 x i32> <i32 536870912, i32 1, i32 536870912, i32 1>, ptr %i.o, align 4, !tbaa !28
  %i.p = getelementptr inbounds nuw [64 x i8], ptr %i.d, i64 %indvars.iv.i ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 192
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 224
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 208
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.q, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  store <4 x i32> <i32 536870912, i32 1, i32 536870912, i32 1>, ptr %i.s, align 4, !tbaa !28
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, 672
  br i1 %exitcond.not.i.3, label %reset_all_predictors.exit, label %bb.c, !llvm.loop !155

reset_all_predictors.exit:                        ; preds = %bb.c
  store i32 1, ptr %i.a, align 8, !tbaa !161
  br label %bb.d

bb.d:                                             ; preds = %reset_all_predictors.exit, %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !28
  %.not25 = icmp eq i32 %i.u, 2
  br i1 %.not25, label %bb.bd, label %.preheader

.preheader:                                       ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 23260 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !162  ; 2 uses
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr inbounds i8, ptr @ff_aac_pred_sfb_max, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !tbaa !22
  %.not660 = icmp eq i8 %i.z, 0
  br i1 %.not660, label %._crit_edge, label %.lr.ph659

.lr.ph659:                                        ; preds = %.preheader
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ab = load ptr, ptr %i.aa, align 16, !tbaa !45 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 40336
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 5520
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 112
  %.pre = load i16, ptr %i.ab, align 2, !tbaa !33
  br label %bb.e

.loopexit.loopexit:                               ; preds = %av_sub_sf.exit581
  %.pre708 = load i32, ptr %i.v, align 4, !tbaa !162
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.e
  %i.ag = phi i32 [ %.pre708, %.loopexit.loopexit ], [ %i.am, %bb.e ] ; 2 uses
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds i8, ptr @ff_aac_pred_sfb_max, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !22
  %i.ak = zext i8 %i.aj to i64
  %i.al = icmp samesign ult i64 %indvars.iv.next706, %i.ak
  br i1 %i.al, label %bb.e, label %._crit_edge, !llvm.loop !156

bb.e:                                             ; preds = %.lr.ph659, %.loopexit
  %i.am = phi i32 [ %i.w, %.lr.ph659 ], [ %i.ag, %.loopexit ]
  %i.an = phi i16 [ %.pre, %.lr.ph659 ], [ %i.ap, %.loopexit ] ; 2 uses
  %indvars.iv705 = phi i64 [ 0, %.lr.ph659 ], [ %indvars.iv.next706, %.loopexit ] ; 2 uses
  %indvars.iv.next706 = add nuw nsw i64 %indvars.iv705, 1 ; 3 uses
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %indvars.iv.next706
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !33 ; 3 uses
  %i.aq = icmp ult i16 %i.an, %i.ap
  br i1 %i.aq, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.e
  %i.ar = getelementptr inbounds nuw i8, ptr %i.af, i64 %indvars.iv705
  %i.as = zext i16 %i.an to i64
  %wide.trip.count = zext i16 %i.ap to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %av_sub_sf.exit581
  %indvars.iv = phi i64 [ %i.as, %.lr.ph ], [ %indvars.iv.next, %av_sub_sf.exit581 ] ; 3 uses
  %i.at = load ptr, ptr %i.ac, align 16, !tbaa !22
  %i.au = getelementptr inbounds nuw [64 x i8], ptr %i.at, i64 %indvars.iv ; 9 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv ; 3 uses
  %i.aw = load i32, ptr %i.ae, align 4, !tbaa !163
  %.not27 = icmp eq i32 %i.aw, 0
  br i1 %.not27, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ax = load i8, ptr %i.ar, align 1, !tbaa !22
  %.not613 = icmp eq i8 %i.ax, 0
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.not.i = phi i1 [ true, %bb.f ], [ %.not613, %bb.g ]
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 32 ; 2 uses
  %.sroa.0115.0.copyload.i = load i64, ptr %i.ay, align 4, !tbaa !28 ; 6 uses
end_hunk_0
