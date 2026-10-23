Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/error_resilience?download=true
inline.NumInlined: 8
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 21
begin_hunk_0_@guess_dc:bb.a
  %i.fx = add nsw i64 %i.fw, %i.fn
  %i.fy = add nuw nsw i64 %i.fo, %i.fs
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ex, i64 12
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !47
  %spec.select.3 = tail call i32 @llvm.umax.i32(i32 %i.ga, i32 1)
  %i.gb = udiv i32 268435456, %spec.select.3
  %i.gc = zext nneg i32 %i.gb to i64              ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ey, i64 6
  %i.ge = load i16, ptr %i.gd, align 2, !tbaa !67
  %i.gf = sext i16 %i.ge to i64
  %i.gg = mul nsw i64 %i.gf, %i.gc
  %i.gh = add nsw i64 %i.gg, %i.fx
  %i.gi = add nuw nsw i64 %i.fy, %i.gc            ; 2 uses
  %i.gj = lshr i64 %i.gi, 1
  %i.gk = add nsw i64 %i.gj, %i.gh
  %i.gl = sdiv i64 %i.gk, %i.gi
  %i.gm = trunc i64 %i.gl to i16
  %i.gn = getelementptr [2 x i8], ptr %i.ek, i64 %indvars.iv259
  store i16 %i.gm, ptr %i.gn, align 2, !tbaa !67
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %.preheader
  %indvars.iv.next260 = add nuw nsw i64 %indvars.iv259, 1 ; 2 uses
  %exitcond263.not = icmp eq i64 %indvars.iv.next260, %wide.trip.count262
  br i1 %exitcond263.not, label %._crit_edge234, label %bb.s, !llvm.loop !148

._crit_edge234:                                   ; preds = %bb.u
  %indvars.iv.next265 = add nuw nsw i64 %indvars.iv264, 1 ; 2 uses
  %exitcond268.not = icmp eq i64 %indvars.iv.next265, %wide.trip.count267
  br i1 %exitcond268.not, label %.loopexit, label %.preheader201, !llvm.loop !149

.loopexit:                                        ; preds = %._crit_edge234, %.preheader207.lr.ph, %.preheader202, %.preheader201.lr.ph, %bb.j
  call void @av_freep(ptr noundef nonnull %i.a) #10
  call void @av_freep(ptr noundef nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @h_block_filter(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef %2, i32 noundef %3, i64 noundef range(i64 -2147483648, 2147483648) %4, i32 noundef range(i32 0, 2) %5) unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !24
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !54
  %i.d = icmp eq i32 %i.c, 27
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 436
  %i.f = load i32, ptr %i.e, align 4, !tbaa !72
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.10, i32 noundef 67) #10
  tail call void @abort() #11
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.h = load i32, ptr %i.g, align 4, !tbaa !45
  %i.i = shl nsw i32 %i.h, 2
  %i.j = sext i32 %i.i to i64
  br label %set_mv_strides.exit

bb.e:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = load i64, ptr %i.k, align 8, !tbaa !53
  br label %set_mv_strides.exit

set_mv_strides.exit:                              ; preds = %bb.d, %bb.e
  %.0 = phi i64 [ 4, %bb.d ], [ 2, %bb.e ]
  %storemerge.i = phi i64 [ %i.j, %bb.d ], [ %i.l, %bb.e ]
  %i.m = zext nneg i32 %5 to i64
  %i.n = lshr exact i64 %.0, %i.m                 ; 3 uses
  %i.o = mul nsw i64 %storemerge.i, %i.n
  %i.p = icmp sgt i32 %3, 0
  br i1 %i.p, label %.preheader.lr.ph, label %._crit_edge204.split

.preheader.lr.ph:                                 ; preds = %set_mv_strides.exit
  %i.q = icmp sgt i32 %2, 1
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.t = trunc nsw i64 %4 to i32
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 240
  br i1 %i.q, label %.preheader.preheader, label %._crit_edge204.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.w = add nsw i32 %2, -1
  %wide.trip.count213 = zext nneg i32 %3 to i64
  %wide.trip.count = zext i32 %i.w to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv210 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next211, %._crit_edge ] ; 3 uses
  %i.x = trunc nuw nsw i64 %indvars.iv210 to i32  ; 2 uses
  %i.y = lshr i32 %i.x, %5
  %i.z = zext nneg i32 %i.y to i64
  %.tr = mul i32 %i.x, %i.t
  %i.aa = mul nsw i64 %i.o, %indvars.iv210
  br label %bb.f

bb.f:                                             ; preds = %.preheader, %.loopexit
  %indvars.iv206 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next207, %.loopexit ] ; 3 uses
  %i.ab = load ptr, ptr %i.r, align 8, !tbaa !22  ; 2 uses
  %i.ac = trunc nuw nsw i64 %indvars.iv206 to i32 ; 2 uses
  %i.ad = lshr i32 %i.ac, %5
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = load i64, ptr %i.s, align 8, !tbaa !21
  %i.ag = mul nsw i64 %i.af, %i.z                 ; 2 uses
  %i.ah = add nsw i64 %i.ag, %i.ae                ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %i.ab, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !43
  %indvars.iv.next207 = add nuw nsw i64 %indvars.iv206, 1 ; 4 uses
  %i.ak = trunc nuw nsw i64 %indvars.iv.next207 to i32
  %i.al = lshr i32 %i.ak, %5
  %i.am = zext nneg i32 %i.al to i64
  %i.an = add nsw i64 %i.ag, %i.am                ; 2 uses
  %i.ao = getelementptr inbounds i8, ptr %i.ab, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !43
  %i.aq = and i8 %i.aj, 14
  %i.ar = and i8 %i.ap, 14
  %i.as = add i32 %.tr, %i.ac
  %i.at = shl i32 %i.as, 3
  %i.au = load ptr, ptr %i.u, align 8, !tbaa !62
  %i.av = mul nuw nsw i64 %i.n, %indvars.iv206
  %i.aw = getelementptr [4 x i8], ptr %i.au, i64 %i.aa ; 2 uses
  %i.ax = getelementptr [4 x i8], ptr %i.aw, i64 %i.av ; 2 uses
  %i.ay = mul nuw nsw i64 %i.n, %indvars.iv.next207
  %i.az = getelementptr [4 x i8], ptr %i.aw, i64 %i.ay ; 2 uses
  %i.ba = icmp ne i8 %i.aq, 0                     ; 3 uses
  %i.bb = icmp ne i8 %i.ar, 0                     ; 3 uses
  %or.cond = select i1 %i.ba, i1 true, i1 %i.bb
  br i1 %or.cond, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %bb.f
  %i.bc = load ptr, ptr %i.v, align 8, !tbaa !65  ; 2 uses
  %i.bd = getelementptr inbounds [4 x i8], ptr %i.bc, i64 %i.an
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !47
  %i.bf = and i32 %i.be, 7
  %i.bg = getelementptr inbounds [4 x i8], ptr %i.bc, i64 %i.ah
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !47
  %i.bi = and i32 %i.bh, 7
  %i.bj = icmp ne i32 %i.bi, 0
  %i.bk = icmp ne i32 %i.bf, 0
  %or.cond3 = select i1 %i.bj, i1 true, i1 %i.bk
  br i1 %or.cond3, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bl = load i16, ptr %i.ax, align 2, !tbaa !67
  %i.bm = sext i16 %i.bl to i32
  %i.bn = load i16, ptr %i.az, align 2, !tbaa !67
  %i.bo = sext i16 %i.bn to i32
  %i.bp = sub nsw i32 %i.bm, %i.bo
  %i.bq = tail call i32 @llvm.abs.i32(i32 %i.bp, i1 true)
  %i.br = getelementptr inbounds nuw i8, ptr %i.ax, i64 2
  %i.bs = load i16, ptr %i.br, align 2, !tbaa !67
  %i.bt = sext i16 %i.bs to i32
  %i.bu = getelementptr inbounds nuw i8, ptr %i.az, i64 2
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !67
  %i.bw = sext i16 %i.bv to i32
  %i.bx = add nsw i32 %i.bw, %i.bt
  %i.by = tail call i32 @llvm.abs.i32(i32 %i.bx, i1 true)
  %i.bz = add nuw nsw i32 %i.by, %i.bq
  %i.ca = icmp samesign ult i32 %i.bz, 2
  br i1 %i.ca, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.cb = sext i32 %i.at to i64
  %invariant.gep = getelementptr i8, ptr %1, i64 %i.cb
  %or.cond5 = select i1 %i.ba, i1 %i.bb, i1 false
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.o
  %indvars.iv = phi i64 [ 0, %bb.i ], [ %indvars.iv.next, %bb.o ] ; 2 uses
  %i.cc = mul nsw i64 %4, %indvars.iv
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.cc ; 8 uses
  %i.cd = getelementptr i8, ptr %gep, i64 7       ; 2 uses
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !43
  %i.cf = zext i8 %i.ce to i32                    ; 3 uses
  %i.cg = getelementptr i8, ptr %gep, i64 6       ; 2 uses
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !43
  %i.ci = zext i8 %i.ch to i32                    ; 2 uses
  %i.cj = sub nsw i32 %i.cf, %i.ci
  %i.ck = getelementptr i8, ptr %gep, i64 8       ; 2 uses
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !43
  %i.cm = zext i8 %i.cl to i32                    ; 3 uses
  %i.cn = sub nsw i32 %i.cm, %i.cf                ; 2 uses
  %i.co = getelementptr i8, ptr %gep, i64 9       ; 2 uses
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !43
  %i.cq = zext i8 %i.cp to i32                    ; 2 uses
  %i.cr = sub nsw i32 %i.cq, %i.cm
  %i.cs = tail call i32 @llvm.abs.i32(i32 %i.cn, i1 true)
  %i.ct = tail call i32 @llvm.abs.i32(i32 %i.cj, i1 true)
  %i.cu = tail call i32 @llvm.abs.i32(i32 %i.cr, i1 true)
  %i.cv = add nuw nsw i32 %i.ct, 1
  %i.cw = add nuw nsw i32 %i.cv, %i.cu
  %i.cx = lshr i32 %i.cw, 1
  %i.cy = sub nsw i32 %i.cs, %i.cx                ; 2 uses
  %i.cz = tail call i32 @llvm.smax.i32(i32 %i.cy, i32 0) ; 2 uses
  %i.da = icmp slt i32 %i.cn, 0
  %i.db = sub nsw i32 0, %i.cz
  %spec.select = select i1 %i.da, i32 %i.db, i32 %i.cz ; 2 uses
  %6 = icmp slt i32 %i.cy, 1
  br i1 %6, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j
  br i1 %or.cond5, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %spec.select.tr = trunc nsw i32 %spec.select to i16
  %.lhs.trunc = shl nsw i16 %spec.select.tr, 4
  %i.dc = sdiv i16 %.lhs.trunc, 9
  %.sext = sext i16 %i.dc to i32                  ; 2 uses
  br i1 %i.ba, label %.thread, label %bb.m

.thread:                                          ; preds = %bb.k, %bb.l
  %.1199 = phi i32 [ %.sext, %bb.l ], [ %spec.select, %bb.k ] ; 5 uses
  %i.dd = mul nsw i32 %.1199, 7
  %i.de = ashr i32 %i.dd, 4
  %i.df = add nsw i32 %i.de, %i.cf
  %i.dg = sext i32 %i.df to i64
  %i.dh = getelementptr inbounds i8, ptr getelementptr inbounds nuw (i8, ptr @ff_crop_tab, i64 1024), i64 %i.dg
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !43
  store i8 %i.di, ptr %i.cd, align 1, !tbaa !43
  %i.dj = mul nsw i32 %.1199, 5
  %i.dk = ashr i32 %i.dj, 4
  %i.dl = add nsw i32 %i.dk, %i.ci
  %i.dm = sext i32 %i.dl to i64
  %i.dn = getelementptr inbounds i8, ptr getelementptr inbounds nuw (i8, ptr @ff_crop_tab, i64 1024), i64 %i.dm
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !43
  store i8 %i.do, ptr %i.cg, align 1, !tbaa !43
  %i.dp = getelementptr i8, ptr %gep, i64 5       ; 2 uses
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !43
  %i.dr = zext i8 %i.dq to i32
  %i.ds = mul nsw i32 %.1199, 3
  %i.dt = ashr i32 %i.ds, 4
  %i.du = add nsw i32 %i.dt, %i.dr
  %i.dv = sext i32 %i.du to i64
  %i.dw = getelementptr inbounds i8, ptr getelementptr inbounds nuw (i8, ptr @ff_crop_tab, i64 1024), i64 %i.dv
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !43
  store i8 %i.dx, ptr %i.dp, align 1, !tbaa !43
  %i.dy = getelementptr i8, ptr %gep, i64 4       ; 2 uses
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !43
  %i.ea = zext i8 %i.dz to i32
  %i.eb = ashr i32 %.1199, 4
  %i.ec = add nsw i32 %i.eb, %i.ea
  %i.ed = sext i32 %i.ec to i64
  %i.ee = getelementptr inbounds i8, ptr getelementptr inbounds nuw (i8, ptr @ff_crop_tab, i64 1024), i64 %i.ed
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !43
  store i8 %i.ef, ptr %i.dy, align 1, !tbaa !43
  br label %bb.m

bb.m:                                             ; preds = %.thread, %bb.l
  %.1200 = phi i32 [ %.1199, %.thread ], [ %.sext, %bb.l ] ; 4 uses
  br i1 %i.bb, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.eg = mul nsw i32 %.1200, 7
  %i.eh = ashr i32 %i.eg, 4
  %i.ei = sub nsw i32 %i.cm, %i.eh
  %i.ej = sext i32 %i.ei to i64
  %i.ek = getelementptr inbounds i8, ptr getelementptr inbounds nuw (i8, ptr @ff_crop_tab, i64 1024), i64 %i.ej
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !43
  store i8 %i.el, ptr %i.ck, align 1, !tbaa !43
  %i.em = mul nsw i32 %.1200, 5
  %i.en = ashr i32 %i.em, 4
  %i.eo = sub nsw i32 %i.cq, %i.en
  %i.ep = sext i32 %i.eo to i64
  %i.eq = getelementptr inbounds i8, ptr getelementptr inbounds nuw (i8, ptr @ff_crop_tab, i64 1024), i64 %i.ep
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !43
  store i8 %i.er, ptr %i.co, align 1, !tbaa !43
  %i.es = getelementptr i8, ptr %gep, i64 10      ; 2 uses
  %i.et = load i8, ptr %i.es, align 1, !tbaa !43
  %i.eu = zext i8 %i.et to i32
  %i.ev = mul nsw i32 %.1200, 3
  %i.ew = ashr i32 %i.ev, 4
  %i.ex = sub nsw i32 %i.eu, %i.ew
  %i.ey = sext i32 %i.ex to i64
  %i.ez = getelementptr inbounds i8, ptr getelementptr inbounds nuw (i8, ptr @ff_crop_tab, i64 1024), i64 %i.ey
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !43
  store i8 %i.fa, ptr %i.es, align 1, !tbaa !43
  %i.fb = getelementptr i8, ptr %gep, i64 11      ; 2 uses
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !43
  %i.fd = zext i8 %i.fc to i32
  %i.fe = ashr i32 %.1200, 4
  %i.ff = sub nsw i32 %i.fd, %i.fe
  %i.fg = sext i32 %i.ff to i64
  %i.fh = getelementptr inbounds i8, ptr getelementptr inbounds nuw (i8, ptr @ff_crop_tab, i64 1024), i64 %i.fg
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !43
  store i8 %i.fi, ptr %i.fb, align 1, !tbaa !43
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n, %bb.j
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8
  br i1 %exitcond.not, label %.loopexit, label %bb.j, !llvm.loop !151

.loopexit:                                        ; preds = %bb.o, %bb.h, %bb.f
  %exitcond209.not = icmp eq i64 %indvars.iv.next207, %wide.trip.count
  br i1 %exitcond209.not, label %._crit_edge, label %bb.f, !llvm.loop !152

._crit_edge:                                      ; preds = %.loopexit
  %indvars.iv.next211 = add nuw nsw i64 %indvars.iv210, 1 ; 2 uses
  %exitcond214.not = icmp eq i64 %indvars.iv.next211, %wide.trip.count213
  br i1 %exitcond214.not, label %._crit_edge204.split, label %.preheader, !llvm.loop !153

._crit_edge204.split:                             ; preds = %._crit_edge, %.preheader.lr.ph, %set_mv_strides.exit
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @v_block_filter(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef %2, i32 noundef %3, i64 noundef range(i64 -2147483648, 2147483648) %4, i32 noundef range(i32 0, 2) %5) unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !24
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !54
  %i.d = icmp eq i32 %i.c, 27
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 436
  %i.f = load i32, ptr %i.e, align 4, !tbaa !72
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.10, i32 noundef 67) #10
  tail call void @abort() #11
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.h = load i32, ptr %i.g, align 4, !tbaa !45
  %i.i = shl nsw i32 %i.h, 2
  %i.j = sext i32 %i.i to i64
  br label %set_mv_strides.exit

bb.e:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = load i64, ptr %i.k, align 8, !tbaa !53
  br label %set_mv_strides.exit

set_mv_strides.exit:                              ; preds = %bb.d, %bb.e
  %.0 = phi i64 [ 4, %bb.d ], [ 2, %bb.e ]
  %storemerge.i = phi i64 [ %i.j, %bb.d ], [ %i.l, %bb.e ]
  %i.m = zext nneg i32 %5 to i64
  %i.n = lshr exact i64 %.0, %i.m                 ; 2 uses
  %i.o = mul nsw i64 %storemerge.i, %i.n          ; 2 uses
  %i.p = add nsw i32 %3, -1
  %i.q = icmp sgt i32 %3, 1
  br i1 %i.q, label %.preheader.lr.ph, label %._crit_edge204.split

.preheader.lr.ph:                                 ; preds = %set_mv_strides.exit
  %i.r = icmp sgt i32 %2, 0
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.u = trunc nsw i64 %4 to i32
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.x = mul nsw i64 %4, 7
  %i.y = getelementptr i8, ptr %1, i64 %i.x
  %i.z = mul nsw i64 %4, 6
  %i.aa = getelementptr i8, ptr %1, i64 %i.z
  %i.ab = shl nsw i64 %4, 3
  %i.ac = getelementptr i8, ptr %1, i64 %i.ab
  %i.ad = mul nsw i64 %4, 9
  %i.ae = getelementptr i8, ptr %1, i64 %i.ad
  %i.af = mul nsw i64 %4, 5
  %i.ag = getelementptr i8, ptr %1, i64 %i.af
  %i.ah = shl nsw i64 %4, 2
  %i.ai = getelementptr i8, ptr %1, i64 %i.ah
  %i.aj = mul nsw i64 %4, 10
  %i.ak = getelementptr i8, ptr %1, i64 %i.aj
  %i.al = mul nsw i64 %4, 11
  %i.am = getelementptr i8, ptr %1, i64 %i.al
  br i1 %i.r, label %.preheader.preheader, label %._crit_edge204.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %wide.trip.count213 = zext nneg i32 %i.p to i64
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv210 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next211, %._crit_edge ] ; 3 uses
  %i.an = trunc nuw nsw i64 %indvars.iv210 to i32 ; 2 uses
  %i.ao = lshr i32 %i.an, %5
  %i.ap = zext nneg i32 %i.ao to i64
  %indvars.iv.next211 = add nuw nsw i64 %indvars.iv210, 1 ; 4 uses
  %i.aq = trunc nuw nsw i64 %indvars.iv.next211 to i32
  %i.ar = lshr i32 %i.aq, %5
  %i.as = zext nneg i32 %i.ar to i64
  %.tr = mul i32 %i.an, %i.u
  %i.at = mul nsw i64 %i.o, %indvars.iv210
  %i.au = mul nsw i64 %i.o, %indvars.iv.next211
  br label %bb.f

bb.f:                                             ; preds = %.preheader, %.loopexit
  %indvars.iv206 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next207, %.loopexit ] ; 3 uses
  %i.av = load ptr, ptr %i.s, align 8, !tbaa !22  ; 2 uses
  %i.aw = trunc nuw nsw i64 %indvars.iv206 to i32 ; 2 uses
  %i.ax = lshr i32 %i.aw, %5
  %i.ay = zext nneg i32 %i.ax to i64              ; 2 uses
  %i.az = load i64, ptr %i.t, align 8, !tbaa !21  ; 2 uses
  %i.ba = mul nsw i64 %i.az, %i.ap
  %i.bb = add nsw i64 %i.ba, %i.ay                ; 2 uses
  %i.bc = getelementptr inbounds i8, ptr %i.av, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !43
  %i.be = mul nsw i64 %i.az, %i.as
  %i.bf = add nsw i64 %i.be, %i.ay                ; 2 uses
  %i.bg = getelementptr inbounds i8, ptr %i.av, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !43
  %i.bi = and i8 %i.bd, 14
  %i.bj = and i8 %i.bh, 14
  %i.bk = add i32 %.tr, %i.aw
  %i.bl = shl i32 %i.bk, 3
  %i.bm = load ptr, ptr %i.v, align 8, !tbaa !62  ; 2 uses
  %i.bn = mul nuw nsw i64 %i.n, %indvars.iv206    ; 2 uses
  %i.bo = getelementptr [4 x i8], ptr %i.bm, i64 %i.at
  %i.bp = getelementptr [4 x i8], ptr %i.bo, i64 %i.bn ; 2 uses
  %i.bq = getelementptr [4 x i8], ptr %i.bm, i64 %i.au
  %i.br = getelementptr [4 x i8], ptr %i.bq, i64 %i.bn ; 2 uses
  %i.bs = icmp ne i8 %i.bi, 0                     ; 3 uses
  %i.bt = icmp ne i8 %i.bj, 0                     ; 3 uses
  %or.cond = select i1 %i.bs, i1 true, i1 %i.bt
  br i1 %or.cond, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %bb.f
  %i.bu = load ptr, ptr %i.w, align 8, !tbaa !65  ; 2 uses
  %i.bv = getelementptr inbounds [4 x i8], ptr %i.bu, i64 %i.bf
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !47
  %i.bx = and i32 %i.bw, 7
  %i.by = getelementptr inbounds [4 x i8], ptr %i.bu, i64 %i.bb
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !47
  %i.ca = and i32 %i.bz, 7
  %i.cb = icmp ne i32 %i.ca, 0
  %i.cc = icmp ne i32 %i.bx, 0
  %or.cond3 = select i1 %i.cb, i1 true, i1 %i.cc
  br i1 %or.cond3, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cd = load i16, ptr %i.bp, align 2, !tbaa !67
  %i.ce = sext i16 %i.cd to i32
  %i.cf = load i16, ptr %i.br, align 2, !tbaa !67
  %i.cg = sext i16 %i.cf to i32
  %i.ch = sub nsw i32 %i.ce, %i.cg
  %i.ci = tail call i32 @llvm.abs.i32(i32 %i.ch, i1 true)
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bp, i64 2
  %i.ck = load i16, ptr %i.cj, align 2, !tbaa !67
  %i.cl = sext i16 %i.ck to i32
  %i.cm = getelementptr inbounds nuw i8, ptr %i.br, i64 2
  %i.cn = load i16, ptr %i.cm, align 2, !tbaa !67
  %i.co = sext i16 %i.cn to i32
  %i.cp = add nsw i32 %i.co, %i.cl
  %i.cq = tail call i32 @llvm.abs.i32(i32 %i.cp, i1 true)
  %i.cr = add nuw nsw i32 %i.cq, %i.ci
  %i.cs = icmp samesign ult i32 %i.cr, 2
  br i1 %i.cs, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %or.cond5 = select i1 %i.bs, i1 %i.bt, i1 false
  %i.ct = sext i32 %i.bl to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.o
  %indvars.iv = phi i64 [ 0, %bb.i ], [ %indvars.iv.next, %bb.o ] ; 2 uses
  %i.cu = add nuw nsw i64 %indvars.iv, %i.ct      ; 8 uses
  %i.cv = getelementptr i8, ptr %i.y, i64 %i.cu   ; 2 uses
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !43
  %i.cx = zext i8 %i.cw to i32                    ; 3 uses
  %i.cy = getelementptr i8, ptr %i.aa, i64 %i.cu  ; 3 uses
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !43
  %i.da = zext i8 %i.cz to i32
  %i.db = sub nsw i32 %i.cx, %i.da
  %i.dc = getelementptr i8, ptr %i.ac, i64 %i.cu  ; 3 uses
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !43
  %i.de = zext i8 %i.dd to i32                    ; 2 uses
  %i.df = sub nsw i32 %i.de, %i.cx                ; 2 uses
  %i.dg = getelementptr i8, ptr %i.ae, i64 %i.cu  ; 3 uses
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !43
  %i.di = zext i8 %i.dh to i32
  %i.dj = sub nsw i32 %i.di, %i.de
  %i.dk = tail call i32 @llvm.abs.i32(i32 %i.df, i1 true)
  %i.dl = tail call i32 @llvm.abs.i32(i32 %i.db, i1 true)
  %i.dm = tail call i32 @llvm.abs.i32(i32 %i.dj, i1 true)
  %i.dn = add nuw nsw i32 %i.dl, 1
  %i.do = add nuw nsw i32 %i.dn, %i.dm
  %i.dp = lshr i32 %i.do, 1
  %i.dq = sub nsw i32 %i.dk, %i.dp                ; 2 uses
  %i.dr = tail call i32 @llvm.smax.i32(i32 %i.dq, i32 0) ; 2 uses
  %i.ds = icmp slt i32 %i.df, 0
  %i.dt = sub nsw i32 0, %i.dr
  %spec.select = select i1 %i.ds, i32 %i.dt, i32 %i.dr ; 2 uses
  %6 = icmp slt i32 %i.dq, 1
  br i1 %6, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j
  br i1 %or.cond5, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %spec.select.tr = trunc nsw i32 %spec.select to i16
  %.lhs.trunc = shl nsw i16 %spec.select.tr, 4
  %i.du = sdiv i16 %.lhs.trunc, 9
  %.sext = sext i16 %i.du to i32                  ; 2 uses
  br i1 %i.bs, label %.thread, label %bb.m

.thread:                                          ; preds = %bb.k, %bb.l
  %.1199 = phi i32 [ %.sext, %bb.l ], [ %spec.select, %bb.k ] ; 5 uses
  %i.dv = mul nsw i32 %.1199, 7
  %i.dw = ashr i32 %i.dv, 4
  %i.dx = add nsw i32 %i.dw, %i.cx
  %i.dy = sext i32 %i.dx to i64
  %i.dz = getelementptr inbounds i8, ptr getelementptr inbounds nuw (i8, ptr @ff_crop_tab, i64 1024), i64 %i.dy
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !43
  store i8 %i.ea, ptr %i.cv, align 1, !tbaa !43
  %i.eb = load i8, ptr %i.cy, align 1, !tbaa !43
  %i.ec = zext i8 %i.eb to i32
  %i.ed = mul nsw i32 %.1199, 5
  %i.ee = ashr i32 %i.ed, 4
  %i.ef = add nsw i32 %i.ee, %i.ec
  %i.eg = sext i32 %i.ef to i64
  %i.eh = getelementptr inbounds i8, ptr getelementptr inbounds nuw (i8, ptr @ff_crop_tab, i64 1024), i64 %i.eg
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !43
  store i8 %i.ei, ptr %i.cy, align 1, !tbaa !43
  %i.ej = getelementptr i8, ptr %i.ag, i64 %i.cu  ; 2 uses
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !43
  %i.el = zext i8 %i.ek to i32
  %i.em = mul nsw i32 %.1199, 3
  %i.en = ashr i32 %i.em, 4
  %i.eo = add nsw i32 %i.en, %i.el
  %i.ep = sext i32 %i.eo to i64
  %i.eq = getelementptr inbounds i8, ptr getelementptr inbounds nuw (i8, ptr @ff_crop_tab, i64 1024), i64 %i.ep
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !43
  store i8 %i.er, ptr %i.ej, align 1, !tbaa !43
  %i.es = getelementptr i8, ptr %i.ai, i64 %i.cu  ; 2 uses
  %i.et = load i8, ptr %i.es, align 1, !tbaa !43
  %i.eu = zext i8 %i.et to i32
  %i.ev = ashr i32 %.1199, 4
  %i.ew = add nsw i32 %i.ev, %i.eu
  %i.ex = sext i32 %i.ew to i64
  %i.ey = getelementptr inbounds i8, ptr getelementptr inbounds nuw (i8, ptr @ff_crop_tab, i64 1024), i64 %i.ex
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !43
  store i8 %i.ez, ptr %i.es, align 1, !tbaa !43
  br label %bb.m

bb.m:                                             ; preds = %.thread, %bb.l
  %.1200 = phi i32 [ %.1199, %.thread ], [ %.sext, %bb.l ] ; 4 uses
  br i1 %i.bt, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.fa = load i8, ptr %i.dc, align 1, !tbaa !43
  %i.fb = zext i8 %i.fa to i32
  %i.fc = mul nsw i32 %.1200, 7
  %i.fd = ashr i32 %i.fc, 4
  %i.fe = sub nsw i32 %i.fb, %i.fd
  %i.ff = sext i32 %i.fe to i64
  %i.fg = getelementptr inbounds i8, ptr getelementptr inbounds nuw (i8, ptr @ff_crop_tab, i64 1024), i64 %i.ff
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !43
  store i8 %i.fh, ptr %i.dc, align 1, !tbaa !43
  %i.fi = load i8, ptr %i.dg, align 1, !tbaa !43
  %i.fj = zext i8 %i.fi to i32
  %i.fk = mul nsw i32 %.1200, 5
  %i.fl = ashr i32 %i.fk, 4
  %i.fm = sub nsw i32 %i.fj, %i.fl
  %i.fn = sext i32 %i.fm to i64
  %i.fo = getelementptr inbounds i8, ptr getelementptr inbounds nuw (i8, ptr @ff_crop_tab, i64 1024), i64 %i.fn
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !43
  store i8 %i.fp, ptr %i.dg, align 1, !tbaa !43
  %i.fq = getelementptr i8, ptr %i.ak, i64 %i.cu  ; 2 uses
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !43
  %i.fs = zext i8 %i.fr to i32
  %i.ft = mul nsw i32 %.1200, 3
  %i.fu = ashr i32 %i.ft, 4
  %i.fv = sub nsw i32 %i.fs, %i.fu
  %i.fw = sext i32 %i.fv to i64
  %i.fx = getelementptr inbounds i8, ptr getelementptr inbounds nuw (i8, ptr @ff_crop_tab, i64 1024), i64 %i.fw
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !43
  store i8 %i.fy, ptr %i.fq, align 1, !tbaa !43
  %i.fz = getelementptr i8, ptr %i.am, i64 %i.cu  ; 2 uses
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !43
  %i.gb = zext i8 %i.ga to i32
  %i.gc = ashr i32 %.1200, 4
  %i.gd = sub nsw i32 %i.gb, %i.gc
  %i.ge = sext i32 %i.gd to i64
  %i.gf = getelementptr inbounds i8, ptr getelementptr inbounds nuw (i8, ptr @ff_crop_tab, i64 1024), i64 %i.ge
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !43
  store i8 %i.gg, ptr %i.fz, align 1, !tbaa !43
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n, %bb.j
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8
  br i1 %exitcond.not, label %.loopexit, label %bb.j, !llvm.loop !154

.loopexit:                                        ; preds = %bb.o, %bb.h, %bb.f
  %indvars.iv.next207 = add nuw nsw i64 %indvars.iv206, 1 ; 2 uses
  %exitcond209.not = icmp eq i64 %indvars.iv.next207, %wide.trip.count
  br i1 %exitcond209.not, label %._crit_edge, label %bb.f, !llvm.loop !155

._crit_edge:                                      ; preds = %.loopexit
  %exitcond214.not = icmp eq i64 %indvars.iv.next211, %wide.trip.count213
  br i1 %exitcond214.not, label %._crit_edge204.split, label %.preheader, !llvm.loop !156

._crit_edge204.split:                             ; preds = %._crit_edge, %.preheader.lr.ph, %set_mv_strides.exit
  ret void
}

declare void @av_freep(ptr noundef) local_unnamed_addr #2

declare void @ff_thread_await_progress(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smax.v8i32(<8 x i32>, <8 x i32>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smin.v8i32(<8 x i32>, <8 x i32>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v8i32(<8 x i32>) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smin.v4i32(<4 x i32>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smax.v4i32(<4 x i32>) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i16> @llvm.abs.v16i16(<16 x i16>, i1 immarg) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v16i32(<16 x i32>) #7

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nounwind }
attributes #11 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS14AVCodecContext", !9, i64 0}
!11 = !{!"p1 int", !9, i64 0}
!12 = !{!"long", !5, i64 0}
!13 = !{!"p1 omnipotent char", !9, i64 0}
!14 = !{!"p1 _ZTS7AVFrame", !9, i64 0}
!15 = !{!"p1 _ZTS11ThreadFrame", !9, i64 0}
!16 = !{!"p1 _ZTS14ThreadProgress", !9, i64 0}
!17 = !{!"ERPicture", !14, i64 0, !15, i64 8, !16, i64 16, !5, i64 24, !5, i64 40, !11, i64 56, !6, i64 64}
!18 = !{!"short", !5, i64 0}
!19 = !{!"ERContext", !10, i64 0, !9, i64 8, !11, i64 16, !6, i64 24, !6, i64 28, !6, i64 32, !12, i64 40, !12, i64 48, !5, i64 56, !6, i64 60, !13, i64 64, !13, i64 72, !5, i64 80, !13, i64 104, !13, i64 112, !5, i64 120, !17, i64 184, !17, i64 256, !17, i64 328, !5, i64 400, !5, i64 416, !18, i64 432, !18, i64 434, !6, i64 436, !6, i64 440, !9, i64 448, !9, i64 456}
!20 = !{!19, !6, i64 32}
end_hunk_0
