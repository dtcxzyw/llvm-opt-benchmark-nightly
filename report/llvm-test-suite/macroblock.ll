Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/macroblock?download=true
inline.NumInlined: 47
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 94
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 104
begin_hunk_0_@TransformDecision:bb.a
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i16, align 2                      ; 4 uses
  %i.d = alloca i16, align 2                      ; 4 uses
  %i.e = alloca i16, align 2                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #17
  %i.f = icmp eq i32 %0, -1                       ; 2 uses
  %i.g = add nuw nsw i32 %0, 1
  %.047 = select i1 %i.f, i32 0, i32 %0           ; 4 uses
  %.046 = select i1 %i.f, i32 4, i32 %i.g         ; 2 uses
  %i.h = icmp slt i32 %.047, %.046
  br i1 %i.h, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.i = shl i32 %.047, 3
  %i.j = shl i32 %.047, 2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %indvars.iv88 = phi i32 [ %i.j, %.lr.ph.preheader ], [ %indvars.iv.next89, %bb.b ] ; 2 uses
  %indvars.iv = phi i32 [ %i.i, %.lr.ph.preheader ], [ %indvars.iv.next84, %bb.b ] ; 2 uses
  %.070 = phi i32 [ 0, %.lr.ph.preheader ], [ %i.ex, %bb.b ]
  %.04569 = phi i32 [ 0, %.lr.ph.preheader ], [ %i.fa, %bb.b ]
  %.14868 = phi i32 [ %.047, %.lr.ph.preheader ], [ %i.fb, %bb.b ] ; 3 uses
  %i.k = and i32 %indvars.iv88, -8
  %i.l = sext i32 %i.k to i64
  %.lobit = and i32 %indvars.iv, 8                ; 2 uses
  %i.m = zext nneg i32 %.lobit to i64             ; 6 uses
  call void @SetModesAndRefframe(i32 noundef %.14868, ptr noundef nonnull %i.c, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e)
  %i.n = shl i32 %.14868, 2
  %i.o = load i16, ptr %i.c, align 2, !tbaa !125
  %i.p = sext i16 %i.o to i32                     ; 2 uses
  %i.q = load i32, ptr %i.a, align 4, !tbaa !9    ; 2 uses
  %i.r = load i32, ptr %i.b, align 4, !tbaa !9    ; 2 uses
  %i.s = load i16, ptr %i.d, align 2, !tbaa !125  ; 2 uses
  %i.t = load i16, ptr %i.e, align 2, !tbaa !125  ; 2 uses
  %i.u = or i32 %i.n, 4
  %i.v = sext i32 %i.u to i64
  %indvars.iv.next86 = or disjoint i64 %i.m, 4    ; 6 uses
  %i.w = trunc nuw nsw i64 %indvars.iv.next86 to i32
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph, %.preheader
  %indvars.iv90 = phi i64 [ %i.l, %.lr.ph ], [ %indvars.iv.next91, %.preheader ] ; 12 uses
  %.167 = phi i32 [ %.070, %.lr.ph ], [ %i.ex, %.preheader ]
  %.04966 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3.3.1, %.preheader ] ; 6 uses
  %i.x = trunc nsw i64 %indvars.iv90 to i32       ; 2 uses
  %i.y = load ptr, ptr @img, align 8, !tbaa !11   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 196
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !45
  %i.ab = sext i32 %i.aa to i64
  %i.ac = add nsw i64 %indvars.iv90, %i.ab        ; 8 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 192
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !35
  %i.af = sext i32 %i.ae to i64
  %i.ag = add nsw i64 %i.m, %i.af                 ; 4 uses
  tail call void @LumaPrediction4x4(i32 noundef %.lobit, i32 noundef %i.x, i32 noundef %i.p, i32 noundef %i.q, i32 noundef %i.r, i16 noundef signext %i.s, i16 noundef signext %i.t)
  %i.ah = load ptr, ptr @imgY_org, align 8, !tbaa !42 ; 4 uses
  %i.ai = load ptr, ptr @img, align 8, !tbaa !11
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 12624 ; 4 uses
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.ac
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !111
  %i.am = getelementptr inbounds [32 x i8], ptr %i.aj, i64 %indvars.iv90
  %i.an = getelementptr inbounds [2 x i8], ptr %i.al, i64 %i.ag
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %i.m
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr @diff64, i64 %.04966 ; 2 uses
  %i.aq = load <4 x i16>, ptr %i.an, align 2, !tbaa !125
  %i.ar = zext <4 x i16> %i.aq to <4 x i32>
  %i.as = load <4 x i16>, ptr %i.ao, align 2, !tbaa !125
  %i.at = zext <4 x i16> %i.as to <4 x i32>
  %i.au = sub nsw <4 x i32> %i.ar, %i.at
  store <4 x i32> %i.au, ptr %i.ap, align 16, !tbaa !9
  %i.av = getelementptr [8 x i8], ptr %i.ah, i64 %i.ac
  %i.aw = getelementptr i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !111
  %i.ay = getelementptr [32 x i8], ptr %i.aj, i64 %indvars.iv90
  %i.az = getelementptr i8, ptr %i.ay, i64 32
  %i.ba = getelementptr inbounds [2 x i8], ptr %i.ax, i64 %i.ag
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %i.az, i64 %i.m
  %i.bc = getelementptr [4 x i8], ptr @diff64, i64 %.04966
  %i.bd = getelementptr i8, ptr %i.bc, i64 16
  %i.be = load <4 x i16>, ptr %i.ba, align 2, !tbaa !125
  %i.bf = zext <4 x i16> %i.be to <4 x i32>
  %i.bg = load <4 x i16>, ptr %i.bb, align 2, !tbaa !125
  %i.bh = zext <4 x i16> %i.bg to <4 x i32>
  %i.bi = sub nsw <4 x i32> %i.bf, %i.bh
  store <4 x i32> %i.bi, ptr %i.bd, align 16, !tbaa !9
  %i.bj = getelementptr [8 x i8], ptr %i.ah, i64 %i.ac
  %i.bk = getelementptr i8, ptr %i.bj, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !111
  %i.bm = getelementptr [32 x i8], ptr %i.aj, i64 %indvars.iv90
  %i.bn = getelementptr i8, ptr %i.bm, i64 64
  %i.bo = getelementptr inbounds [2 x i8], ptr %i.bl, i64 %i.ag
  %i.bp = getelementptr inbounds nuw [2 x i8], ptr %i.bn, i64 %i.m
  %i.bq = getelementptr [4 x i8], ptr @diff64, i64 %.04966
  %i.br = getelementptr i8, ptr %i.bq, i64 32
  %i.bs = load <4 x i16>, ptr %i.bo, align 2, !tbaa !125
  %i.bt = zext <4 x i16> %i.bs to <4 x i32>
  %i.bu = load <4 x i16>, ptr %i.bp, align 2, !tbaa !125
  %i.bv = zext <4 x i16> %i.bu to <4 x i32>
  %i.bw = sub nsw <4 x i32> %i.bt, %i.bv
  store <4 x i32> %i.bw, ptr %i.br, align 16, !tbaa !9
  %i.bx = getelementptr [8 x i8], ptr %i.ah, i64 %i.ac
  %i.by = getelementptr i8, ptr %i.bx, i64 24
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !111
  %i.ca = getelementptr [32 x i8], ptr %i.aj, i64 %indvars.iv90
  %i.cb = getelementptr i8, ptr %i.ca, i64 96
  %i.cc = getelementptr inbounds [2 x i8], ptr %i.bz, i64 %i.ag
  %i.cd = getelementptr inbounds nuw [2 x i8], ptr %i.cb, i64 %i.m
  %i.ce = getelementptr [4 x i8], ptr @diff64, i64 %.04966
  %i.cf = getelementptr i8, ptr %i.ce, i64 48
  %i.cg = load <4 x i16>, ptr %i.cc, align 2, !tbaa !125
  %i.ch = zext <4 x i16> %i.cg to <4 x i32>
  %i.ci = load <4 x i16>, ptr %i.cd, align 2, !tbaa !125
  %i.cj = zext <4 x i16> %i.ci to <4 x i32>
  %i.ck = sub nsw <4 x i32> %i.ch, %i.cj
  store <4 x i32> %i.ck, ptr %i.cf, align 16, !tbaa !9
  %indvars.iv.next.3.3 = or disjoint i64 %.04966, 16 ; 4 uses
  %i.cl = tail call i32 @distortion4x4(ptr noundef nonnull %i.ap) #17
  %i.cm = add nsw i32 %i.cl, %.167
  %i.cn = load ptr, ptr @img, align 8, !tbaa !11
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 192
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !35
  %i.cq = sext i32 %i.cp to i64
  %i.cr = add nsw i64 %indvars.iv.next86, %i.cq   ; 4 uses
  tail call void @LumaPrediction4x4(i32 noundef %i.w, i32 noundef %i.x, i32 noundef %i.p, i32 noundef %i.q, i32 noundef %i.r, i16 noundef signext %i.s, i16 noundef signext %i.t)
  %i.cs = load ptr, ptr @imgY_org, align 8, !tbaa !42 ; 4 uses
  %i.ct = load ptr, ptr @img, align 8, !tbaa !11
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 12624 ; 4 uses
  %i.cv = getelementptr inbounds [8 x i8], ptr %i.cs, i64 %i.ac
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !111
  %i.cx = getelementptr inbounds [32 x i8], ptr %i.cu, i64 %indvars.iv90
  %i.cy = getelementptr inbounds [2 x i8], ptr %i.cw, i64 %i.cr
  %i.cz = getelementptr inbounds nuw [2 x i8], ptr %i.cx, i64 %indvars.iv.next86
  %i.da = getelementptr inbounds nuw [4 x i8], ptr @diff64, i64 %indvars.iv.next.3.3 ; 2 uses
  %i.db = load <4 x i16>, ptr %i.cy, align 2, !tbaa !125
  %i.dc = zext <4 x i16> %i.db to <4 x i32>
  %i.dd = load <4 x i16>, ptr %i.cz, align 2, !tbaa !125
  %i.de = zext <4 x i16> %i.dd to <4 x i32>
  %i.df = sub nsw <4 x i32> %i.dc, %i.de
  store <4 x i32> %i.df, ptr %i.da, align 16, !tbaa !9
  %i.dg = getelementptr [8 x i8], ptr %i.cs, i64 %i.ac
  %i.dh = getelementptr i8, ptr %i.dg, i64 8
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !111
  %i.dj = getelementptr [32 x i8], ptr %i.cu, i64 %indvars.iv90
  %i.dk = getelementptr i8, ptr %i.dj, i64 32
  %i.dl = getelementptr inbounds [2 x i8], ptr %i.di, i64 %i.cr
  %i.dm = getelementptr inbounds nuw [2 x i8], ptr %i.dk, i64 %indvars.iv.next86
  %i.dn = getelementptr [4 x i8], ptr @diff64, i64 %indvars.iv.next.3.3
  %i.do = getelementptr i8, ptr %i.dn, i64 16
  %i.dp = load <4 x i16>, ptr %i.dl, align 2, !tbaa !125
  %i.dq = zext <4 x i16> %i.dp to <4 x i32>
  %i.dr = load <4 x i16>, ptr %i.dm, align 2, !tbaa !125
  %i.ds = zext <4 x i16> %i.dr to <4 x i32>
  %i.dt = sub nsw <4 x i32> %i.dq, %i.ds
  store <4 x i32> %i.dt, ptr %i.do, align 16, !tbaa !9
  %i.du = getelementptr [8 x i8], ptr %i.cs, i64 %i.ac
  %i.dv = getelementptr i8, ptr %i.du, i64 16
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !111
  %i.dx = getelementptr [32 x i8], ptr %i.cu, i64 %indvars.iv90
  %i.dy = getelementptr i8, ptr %i.dx, i64 64
  %i.dz = getelementptr inbounds [2 x i8], ptr %i.dw, i64 %i.cr
  %i.ea = getelementptr inbounds nuw [2 x i8], ptr %i.dy, i64 %indvars.iv.next86
  %i.eb = getelementptr [4 x i8], ptr @diff64, i64 %indvars.iv.next.3.3
  %i.ec = getelementptr i8, ptr %i.eb, i64 32
  %i.ed = load <4 x i16>, ptr %i.dz, align 2, !tbaa !125
  %i.ee = zext <4 x i16> %i.ed to <4 x i32>
  %i.ef = load <4 x i16>, ptr %i.ea, align 2, !tbaa !125
  %i.eg = zext <4 x i16> %i.ef to <4 x i32>
  %i.eh = sub nsw <4 x i32> %i.ee, %i.eg
  store <4 x i32> %i.eh, ptr %i.ec, align 16, !tbaa !9
  %i.ei = getelementptr [8 x i8], ptr %i.cs, i64 %i.ac
  %i.ej = getelementptr i8, ptr %i.ei, i64 24
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !111
  %i.el = getelementptr [32 x i8], ptr %i.cu, i64 %indvars.iv90
  %i.em = getelementptr i8, ptr %i.el, i64 96
  %i.en = getelementptr inbounds [2 x i8], ptr %i.ek, i64 %i.cr
  %i.eo = getelementptr inbounds nuw [2 x i8], ptr %i.em, i64 %indvars.iv.next86
  %i.ep = getelementptr [4 x i8], ptr @diff64, i64 %indvars.iv.next.3.3
  %i.eq = getelementptr i8, ptr %i.ep, i64 48
  %i.er = load <4 x i16>, ptr %i.en, align 2, !tbaa !125
  %i.es = zext <4 x i16> %i.er to <4 x i32>
  %i.et = load <4 x i16>, ptr %i.eo, align 2, !tbaa !125
  %i.eu = zext <4 x i16> %i.et to <4 x i32>
  %i.ev = sub nsw <4 x i32> %i.es, %i.eu
  store <4 x i32> %i.ev, ptr %i.eq, align 16, !tbaa !9
  %indvars.iv.next.3.3.1 = add nuw nsw i64 %.04966, 32
  %i.ew = tail call i32 @distortion4x4(ptr noundef nonnull %i.da) #17
  %i.ex = add nsw i32 %i.ew, %i.cm                ; 3 uses
  %indvars.iv.next91 = add nsw i64 %indvars.iv90, 4
  %i.ey = icmp slt i64 %indvars.iv90, %i.v
  br i1 %i.ey, label %.preheader, label %bb.b, !llvm.loop !237

bb.b:                                             ; preds = %.preheader
  %i.ez = tail call i32 @distortion8x8(ptr noundef nonnull @diff64) #17
  %i.fa = add nsw i32 %i.ez, %.04569              ; 2 uses
  %i.fb = add i32 %.14868, 1                      ; 2 uses
  %indvars.iv.next84 = add i32 %indvars.iv, 8
  %indvars.iv.next89 = add i32 %indvars.iv88, 4
  %exitcond.not = icmp eq i32 %i.fb, %.046
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !238

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.045.lcssa = phi i32 [ 0, %bb.a ], [ %i.fa, %bb.b ] ; 2 uses
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.ex, %bb.b ] ; 2 uses
  %i.fc = load ptr, ptr @input, align 8, !tbaa !11
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 5100
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !62
  %i.ff = icmp eq i32 %i.fe, 2
  %i.fg = icmp slt i32 %.045.lcssa, %.0.lcssa
  %or.cond = select i1 %i.ff, i1 true, i1 %i.fg
  br i1 %or.cond, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.fh = load i32, ptr %1, align 4, !tbaa !9
  %i.fi = sub i32 %.0.lcssa, %.045.lcssa
  %i.fj = add i32 %i.fi, %i.fh
  store i32 %i.fj, ptr %1, align 4, !tbaa !9
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.c
  %.056 = phi i32 [ 0, %bb.c ], [ 1, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret i32 %.056
}

declare i32 @distortion4x4(ptr noundef) local_unnamed_addr #5

declare i32 @distortion8x8(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @IntraChromaPrediction4x4(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #8 {
bb.a:
  %i.a = load ptr, ptr @img, align 8, !tbaa !11   ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 14224
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !37
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.e = load i32, ptr %i.d, align 4, !tbaa !30
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr inbounds [536 x i8], ptr %i.c, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 416
  %i.i = load i32, ptr %i.h, align 8, !tbaa !57
  %i.j = sext i32 %1 to i64                       ; 8 uses
  %i.k = sext i32 %0 to i64                       ; 4 uses
  %i.l = sext i32 %i.i to i64                     ; 4 uses
  %i.m = sext i32 %2 to i64                       ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 12624
  %i.o = getelementptr inbounds [32 x i8], ptr %i.n, i64 %i.m
  %i.p = getelementptr inbounds [2 x i8], ptr %i.o, i64 %i.j
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8528
  %i.r = getelementptr inbounds [2048 x i8], ptr %i.q, i64 %i.k
  %i.s = getelementptr inbounds [512 x i8], ptr %i.r, i64 %i.l
  %i.t = getelementptr inbounds [32 x i8], ptr %i.s, i64 %i.m
  %i.u = getelementptr inbounds [2 x i8], ptr %i.t, i64 %i.j
  %i.v = load i64, ptr %i.u, align 2
  store i64 %i.v, ptr %i.p, align 2
  %indvars.iv.next = add nsw i64 %i.m, 1          ; 2 uses
  %i.w = load ptr, ptr @img, align 8, !tbaa !11   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 12624
  %i.y = getelementptr inbounds [32 x i8], ptr %i.x, i64 %indvars.iv.next
  %i.z = getelementptr inbounds [2 x i8], ptr %i.y, i64 %i.j
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 8528
  %i.ab = getelementptr inbounds [2048 x i8], ptr %i.aa, i64 %i.k
  %i.ac = getelementptr inbounds [512 x i8], ptr %i.ab, i64 %i.l
  %i.ad = getelementptr inbounds [32 x i8], ptr %i.ac, i64 %indvars.iv.next
  %i.ae = getelementptr inbounds [2 x i8], ptr %i.ad, i64 %i.j
  %i.af = load i64, ptr %i.ae, align 2
  store i64 %i.af, ptr %i.z, align 2
  %indvars.iv.next.1 = add nsw i64 %i.m, 2        ; 2 uses
  %i.ag = load ptr, ptr @img, align 8, !tbaa !11  ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 12624
  %i.ai = getelementptr inbounds [32 x i8], ptr %i.ah, i64 %indvars.iv.next.1
  %i.aj = getelementptr inbounds [2 x i8], ptr %i.ai, i64 %i.j
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 8528
  %i.al = getelementptr inbounds [2048 x i8], ptr %i.ak, i64 %i.k
  %i.am = getelementptr inbounds [512 x i8], ptr %i.al, i64 %i.l
  %i.an = getelementptr inbounds [32 x i8], ptr %i.am, i64 %indvars.iv.next.1
  %i.ao = getelementptr inbounds [2 x i8], ptr %i.an, i64 %i.j
  %i.ap = load i64, ptr %i.ao, align 2
  store i64 %i.ap, ptr %i.aj, align 2
  %indvars.iv.next.2 = add nsw i64 %i.m, 3        ; 2 uses
  %i.aq = load ptr, ptr @img, align 8, !tbaa !11  ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 12624
  %i.as = getelementptr inbounds [32 x i8], ptr %i.ar, i64 %indvars.iv.next.2
  %i.at = getelementptr inbounds [2 x i8], ptr %i.as, i64 %i.j
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 8528
  %i.av = getelementptr inbounds [2048 x i8], ptr %i.au, i64 %i.k
  %i.aw = getelementptr inbounds [512 x i8], ptr %i.av, i64 %i.l
  %i.ax = getelementptr inbounds [32 x i8], ptr %i.aw, i64 %indvars.iv.next.2
  %i.ay = getelementptr inbounds [2 x i8], ptr %i.ax, i64 %i.j
  %i.az = load i64, ptr %i.ay, align 2
  store i64 %i.az, ptr %i.at, align 2
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ChromaPrediction4x4(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i16 noundef signext %6, i16 noundef signext %7) local_unnamed_addr #0 {
bb.a:
  %i.a = add nsw i32 %1, 4                        ; 4 uses
  %i.b = add nsw i32 %2, 4                        ; 5 uses
  %i.c = load ptr, ptr @img, align 8, !tbaa !11   ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 14384
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !146  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 14224
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !37
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !30
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds [536 x i8], ptr %i.g, i64 %i.j ; 2 uses
  %i.l = load ptr, ptr @active_pps, align 8, !tbaa !11 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 192
  %i.n = load i32, ptr %i.m, align 8, !tbaa !126
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.p = load i32, ptr %i.o, align 4, !tbaa !54
  switch i32 %i.p, label %bb.c [
    i32 0, label %bb.e
    i32 3, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 196
  %i.r = load i32, ptr %i.q, align 4, !tbaa !127
  %.not158 = icmp eq i32 %i.r, 0
  br i1 %.not158, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.t = load i32, ptr %i.s, align 4, !tbaa !54
  %i.u = icmp eq i32 %i.t, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.b, %bb.c, %bb.d
  %i.v = phi i1 [ true, %bb.b ], [ true, %bb.b ], [ false, %bb.c ], [ %i.u, %bb.d ]
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 480
  %i.x = load i16, ptr %i.w, align 8, !tbaa !128  ; 2 uses
  %i.y = icmp ne i16 %i.x, 0
  %i.z = or i16 %7, %6
  %i.aa = icmp eq i16 %i.z, 0
  %or.cond5 = and i1 %i.aa, %i.y
  %i.ab = icmp eq i32 %3, 2                       ; 3 uses
  %i.ac = icmp eq i32 %4, 1
  %i.ad = and i1 %i.ac, %or.cond5
  %i.ae = icmp eq i32 %5, 1
  %i.af = and i1 %i.ae, %i.ad
  %or.cond11 = and i1 %i.ab, %i.af
  br i1 %or.cond11, label %.thread161, label %bb.f

.thread161:                                       ; preds = %bb.e
  %i.ag = icmp eq i16 %i.x, 1
  %.in.v = select i1 %i.ag, i64 14392, i64 14400
  %.in = getelementptr inbounds nuw i8, ptr %i.c, i64 %.in.v
  %i.ah = load ptr, ptr %.in, align 8, !tbaa !129
  br label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.ai = icmp eq i32 %3, -1
  br i1 %i.ai, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %i.k, i64 416
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !57
  %i.al = sext i32 %1 to i64                      ; 8 uses
  %i.am = sext i32 %0 to i64                      ; 4 uses
  %i.an = sext i32 %i.ak to i64                   ; 4 uses
  %i.ao = sext i32 %2 to i64                      ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 12624
  %i.aq = getelementptr inbounds [32 x i8], ptr %i.ap, i64 %i.ao
  %i.ar = getelementptr inbounds [2 x i8], ptr %i.aq, i64 %i.al
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 8528
  %i.at = getelementptr inbounds [2048 x i8], ptr %i.as, i64 %i.am
  %i.au = getelementptr inbounds [512 x i8], ptr %i.at, i64 %i.an
  %i.av = getelementptr inbounds [32 x i8], ptr %i.au, i64 %i.ao
  %i.aw = getelementptr inbounds [2 x i8], ptr %i.av, i64 %i.al
  %i.ax = load i64, ptr %i.aw, align 2
  store i64 %i.ax, ptr %i.ar, align 2
  %indvars.iv.next.i = add nsw i64 %i.ao, 1       ; 2 uses
  %i.ay = load ptr, ptr @img, align 8, !tbaa !11  ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 12624
  %i.ba = getelementptr inbounds [32 x i8], ptr %i.az, i64 %indvars.iv.next.i
  %i.bb = getelementptr inbounds [2 x i8], ptr %i.ba, i64 %i.al
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 8528
  %i.bd = getelementptr inbounds [2048 x i8], ptr %i.bc, i64 %i.am
  %i.be = getelementptr inbounds [512 x i8], ptr %i.bd, i64 %i.an
  %i.bf = getelementptr inbounds [32 x i8], ptr %i.be, i64 %indvars.iv.next.i
  %i.bg = getelementptr inbounds [2 x i8], ptr %i.bf, i64 %i.al
  %i.bh = load i64, ptr %i.bg, align 2
  store i64 %i.bh, ptr %i.bb, align 2
  %indvars.iv.next.1.i = add nsw i64 %i.ao, 2     ; 2 uses
  %i.bi = load ptr, ptr @img, align 8, !tbaa !11  ; 2 uses
end_hunk_0
