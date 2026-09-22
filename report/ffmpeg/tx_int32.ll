Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/tx_int32?download=true
inline.NumInlined: 21
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 31
begin_hunk_0_@ff_tx_rdft_r2i_mod2_int32_c:bb.a
  %i.eh = mul nsw i64 %i.ee, %i.eg
  %i.ei = add nsw i64 %i.eh, 1073741824
  %i.ej = lshr i64 %i.ei, 31
  %i.ek = trunc i64 %i.ej to i32
  %i.el = mul nsw i32 %i.au, %i.ek
  %i.em = add i32 %i.ed, %i.dv
  %i.en = add i32 %i.em, %i.el
  %i.eo = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ac
  store i32 %i.en, ptr %i.eo, align 4, !tbaa !12
  ret void

.lr.ph93:                                         ; preds = %.lr.ph93.prol.loopexit, %.lr.ph93
  %indvars.iv96 = phi i64 [ %indvars.iv.next97.3, %.lr.ph93 ], [ %indvars.iv96.unr, %.lr.ph93.prol.loopexit ] ; 6 uses
  %i.ep = sub nsw i64 %i.ax, %indvars.iv96
  %i.eq = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ep
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !12
  %i.es = sub nsw i64 %i.ay, %indvars.iv96
  %i.et = getelementptr inbounds [4 x i8], ptr %1, i64 %i.es
  store i32 %i.er, ptr %i.et, align 4, !tbaa !12
  %indvars.iv.next97 = add nuw nsw i64 %indvars.iv96, 1 ; 2 uses
  %i.eu = sub nsw i64 %i.ax, %indvars.iv.next97
  %i.ev = getelementptr inbounds [4 x i8], ptr %1, i64 %i.eu
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !12
  %i.ex = sub nsw i64 %i.ay, %indvars.iv.next97
  %i.ey = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ex
  store i32 %i.ew, ptr %i.ey, align 4, !tbaa !12
  %indvars.iv.next97.1 = add nuw nsw i64 %indvars.iv96, 2 ; 2 uses
  %i.ez = sub nsw i64 %i.ax, %indvars.iv.next97.1
  %i.fa = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ez
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !12
  %i.fc = sub nsw i64 %i.ay, %indvars.iv.next97.1
  %i.fd = getelementptr inbounds [4 x i8], ptr %1, i64 %i.fc
  store i32 %i.fb, ptr %i.fd, align 4, !tbaa !12
  %indvars.iv.next97.2 = add nuw nsw i64 %indvars.iv96, 3 ; 2 uses
  %i.fe = sub nsw i64 %i.ax, %indvars.iv.next97.2
  %i.ff = getelementptr inbounds [4 x i8], ptr %1, i64 %i.fe
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !12
  %i.fh = sub nsw i64 %i.ay, %indvars.iv.next97.2
  %i.fi = getelementptr inbounds [4 x i8], ptr %1, i64 %i.fh
  store i32 %i.fg, ptr %i.fi, align 4, !tbaa !12
  %indvars.iv.next97.3 = add nuw nsw i64 %indvars.iv96, 4 ; 2 uses
  %exitcond100.not.3 = icmp eq i64 %indvars.iv.next97.3, %wide.trip.count99
  br i1 %exitcond100.not.3, label %._crit_edge, label %.lr.ph93, !llvm.loop !144
}

; Function Attrs: nounwind uwtable
define internal void @ff_tx_rdft_c2r_int32_c(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, i64 %3) #3 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !21     ; 2 uses
  %i.b = ashr i32 %i.a, 1
  %i.c = ashr i32 %i.a, 2                         ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !23   ; 9 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  %i.g = sext i32 %i.c to i64                     ; 2 uses
  %i.h = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.g
  %i.i = sext i32 %i.b to i64                     ; 2 uses
  %i.j = getelementptr inbounds [8 x i8], ptr %2, i64 %i.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !25   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.m = load i32, ptr %2, align 4, !tbaa !25     ; 2 uses
  %i.n = add nsw i32 %i.m, %i.k                   ; 2 uses
  store i32 %i.n, ptr %2, align 4, !tbaa !25
  %i.o = sub nsw i32 %i.m, %i.k                   ; 2 uses
  store i32 %i.o, ptr %i.l, align 4, !tbaa !26
  %i.p = load i32, ptr %i.e, align 4, !tbaa !12
  %i.q = sext i32 %i.p to i64
  %i.r = sext i32 %i.n to i64
  %i.s = mul nsw i64 %i.q, %i.r
  %i.t = add nsw i64 %i.s, 1073741824
  %i.u = lshr i64 %i.t, 31
  %i.v = trunc i64 %i.u to i32
  store i32 %i.v, ptr %2, align 4, !tbaa !25
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !12
  %i.y = sext i32 %i.x to i64
  %i.z = sext i32 %i.o to i64
  %i.aa = mul nsw i64 %i.y, %i.z
  %i.ab = add nsw i64 %i.aa, 1073741824
  %i.ac = lshr i64 %i.ab, 31
  %i.ad = trunc i64 %i.ac to i32
  store i32 %i.ad, ptr %i.l, align 4, !tbaa !26
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !12
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds [8 x i8], ptr %2, i64 %i.g ; 3 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !25
  %i.aj = sext i32 %i.ai to i64
  %i.ak = mul nsw i64 %i.aj, %i.ag
  %i.al = add nsw i64 %i.ak, 1073741824
  %i.am = lshr i64 %i.al, 31
  %i.an = trunc i64 %i.am to i32
  store i32 %i.an, ptr %i.ah, align 4, !tbaa !25
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !12
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ah, i64 4 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !26
  %i.at = sext i32 %i.as to i64
  %i.au = mul nsw i64 %i.at, %i.aq
  %i.av = add nsw i64 %i.au, 1073741824
  %i.aw = lshr i64 %i.av, 31
  %i.ax = trunc i64 %i.aw to i32
  store i32 %i.ax, ptr %i.ar, align 4, !tbaa !26
  %i.ay = icmp sgt i32 %i.c, 1
  br i1 %i.ay, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.az = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ba = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %i.bb = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.bc = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  %wide.trip.count = zext nneg i32 %i.c to i64
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !10
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !29
  tail call void %i.be(ptr noundef %i.bg, ptr noundef %1, ptr noundef nonnull %2, i64 noundef 8) #16
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 5 uses
  %i.bh = load i32, ptr %i.az, align 4, !tbaa !12
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv ; 3 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !25 ; 2 uses
  %i.bl = sub nsw i64 %i.i, %indvars.iv
  %i.bm = getelementptr inbounds [8 x i8], ptr %2, i64 %i.bl ; 3 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !25 ; 2 uses
  %i.bo = add nsw i32 %i.bn, %i.bk
  %i.bp = sext i32 %i.bo to i64
  %i.bq = mul nsw i64 %i.bp, %i.bi
  %i.br = add nsw i64 %i.bq, 1073741824
  %i.bs = lshr i64 %i.br, 31
  %i.bt = trunc i64 %i.bs to i32                  ; 2 uses
  %i.bu = load i32, ptr %i.ba, align 4, !tbaa !12
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bj, i64 4 ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !26 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bm, i64 4 ; 2 uses
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !26 ; 2 uses
  %i.ca = sub nsw i32 %i.bx, %i.bz
  %i.cb = sext i32 %i.ca to i64
  %i.cc = mul nsw i64 %i.cb, %i.bv
  %i.cd = add nsw i64 %i.cc, 1073741824
  %i.ce = lshr i64 %i.cd, 31
  %i.cf = trunc i64 %i.ce to i32                  ; 2 uses
  %i.cg = load i32, ptr %i.bb, align 4, !tbaa !12
  %i.ch = sext i32 %i.cg to i64
  %i.ci = add nsw i32 %i.bz, %i.bx
  %i.cj = sext i32 %i.ci to i64
  %i.ck = load i32, ptr %i.bc, align 4, !tbaa !12
  %i.cl = sext i32 %i.ck to i64
  %i.cm = sub nsw i32 %i.bk, %i.bn
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !12
  %i.cq = sext i32 %i.cp to i64                   ; 2 uses
  %i.cr = shl nsw i64 %i.cj, 1
  %i.cs = mul i64 %i.cr, %i.ch
  %i.ct = add i64 %i.cs, 2147483648
  %i.cu = ashr i64 %i.ct, 32                      ; 2 uses
  %i.cv = mul nsw i64 %i.cu, %i.cq
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !12
  %i.cy = sext i32 %i.cx to i64                   ; 2 uses
  %i.cz = shl nsw i64 %i.cn, 1
  %i.da = mul i64 %i.cz, %i.cl
  %i.db = add i64 %i.da, 2147483648
  %i.dc = ashr i64 %i.db, 32                      ; 2 uses
  %i.dd = mul nsw i64 %i.dc, %i.cy
  %i.de = add nsw i64 %i.cv, 1073741824
  %i.df = sub nsw i64 %i.de, %i.dd
  %i.dg = lshr i64 %i.df, 31
  %i.dh = trunc i64 %i.dg to i32                  ; 2 uses
  %i.di = mul nsw i64 %i.cu, %i.cy
  %i.dj = mul nsw i64 %i.dc, %i.cq
  %i.dk = add nsw i64 %i.dj, 1073741824
  %i.dl = add i64 %i.dk, %i.di
  %i.dm = lshr i64 %i.dl, 31
  %i.dn = trunc i64 %i.dm to i32                  ; 2 uses
  %i.do = add nsw i32 %i.dh, %i.bt
  store i32 %i.do, ptr %i.bj, align 4, !tbaa !25
  %i.dp = sub nsw i32 %i.dn, %i.cf
  store i32 %i.dp, ptr %i.bw, align 4, !tbaa !26
  %i.dq = sub nsw i32 %i.bt, %i.dh
  store i32 %i.dq, ptr %i.bm, align 4, !tbaa !25
  %i.dr = add nsw i32 %i.dn, %i.cf
  store i32 %i.dr, ptr %i.by, align 4, !tbaa !26
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !145
}

; Function Attrs: nounwind uwtable
define internal void @ff_tx_dctII_int32_c(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, i64 %3) #3 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !21     ; 5 uses
  %i.b = ashr i32 %i.a, 1                         ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !23   ; 4 uses
  %i.e = icmp sgt i32 %i.b, 0
  br i1 %i.e, label %.lr.ph.preheader, label %.._crit_edge_crit_edge

.._crit_edge_crit_edge:                           ; preds = %bb.a
  %.pre = sext i32 %i.a to i64
  br label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.f = zext nneg i32 %i.a to i64                ; 2 uses
  %wide.trip.count = zext nneg i32 %i.b to i64
  %invariant.gep = getelementptr [4 x i8], ptr %i.d, i64 %i.f
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %.._crit_edge_crit_edge
  %.pre-phi = phi i64 [ %.pre, %.._crit_edge_crit_edge ], [ %i.f, %.lr.ph ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !10
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !29
  tail call void %i.h(ptr noundef %i.j, ptr noundef %1, ptr noundef %2, i64 noundef 8) #16
  %i.k = getelementptr inbounds [4 x i8], ptr %1, i64 %.pre-phi
  %i.l = load i32, ptr %i.k, align 4, !tbaa !12   ; 2 uses
  %i.m = icmp sgt i32 %i.a, 2
  br i1 %i.m, label %.lr.ph82, label %._crit_edge83

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 4 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !12   ; 2 uses
  %i.p = trunc i64 %indvars.iv to i32
  %i.q = xor i32 %i.p, -1
  %i.r = add i32 %i.a, %i.q
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds [4 x i8], ptr %2, i64 %i.s ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !12   ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.v = load i32, ptr %gep, align 4, !tbaa !12
  %i.w = add nsw i32 %i.u, %i.o
  %i.x = sub nsw i32 %i.o, %i.u
  %i.y = sext i32 %i.x to i64
  %i.z = ashr i32 %i.w, 1                         ; 2 uses
  %i.aa = sext i32 %i.v to i64
  %i.ab = mul nsw i64 %i.y, %i.aa
  %i.ac = add nsw i64 %i.ab, 1073741824
  %i.ad = lshr i64 %i.ac, 31
  %i.ae = trunc i64 %i.ad to i32                  ; 2 uses
  %i.af = add i32 %i.z, %i.ae
  store i32 %i.af, ptr %i.n, align 4, !tbaa !12
  %i.ag = sub i32 %i.z, %i.ae
  store i32 %i.ag, ptr %i.t, align 4, !tbaa !12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !146

._crit_edge83:                                    ; preds = %.lr.ph82, %._crit_edge
  %.077.lcssa = phi i32 [ %i.l, %._crit_edge ], [ %i.bp, %.lr.ph82 ]
  %i.ah = load i32, ptr %i.d, align 4, !tbaa !12
  %i.ai = sext i32 %i.ah to i64
  %i.aj = load i32, ptr %1, align 4, !tbaa !12
  %i.ak = sext i32 %i.aj to i64
  %i.al = mul nsw i64 %i.ak, %i.ai
  %i.am = add nsw i64 %i.al, 1073741824
  %i.an = lshr i64 %i.am, 31
  %i.ao = trunc i64 %i.an to i32
  store i32 %i.ao, ptr %1, align 4, !tbaa !12
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %.077.lcssa, ptr %i.ap, align 4, !tbaa !12
  ret void

.lr.ph82:                                         ; preds = %._crit_edge, %.lr.ph82
  %indvars.iv85 = phi i64 [ %indvars.iv.next86, %.lr.ph82 ], [ %.pre-phi, %._crit_edge ] ; 2 uses
  %.07779 = phi i32 [ %i.bp, %.lr.ph82 ], [ %i.l, %._crit_edge ] ; 2 uses
  %indvars.iv.next86 = add nsw i64 %indvars.iv85, -2 ; 4 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next86 ; 3 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !12
  %i.as = sext i32 %i.ar to i64                   ; 2 uses
  %i.at = sub nsw i64 %.pre-phi, %indvars.iv.next86
  %i.au = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !12
  %i.aw = sext i32 %i.av to i64                   ; 2 uses
  %i.ax = mul nsw i64 %i.aw, %i.as
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aq, i64 4 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !12
  %i.ba = sext i32 %i.az to i64                   ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next86
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !12
  %i.bd = sext i32 %i.bc to i64                   ; 2 uses
  %i.be = mul nsw i64 %i.bd, %i.ba
  %i.bf = add nsw i64 %i.ax, 1073741824
  %i.bg = sub nsw i64 %i.bf, %i.be
  %i.bh = lshr i64 %i.bg, 31
  %i.bi = trunc i64 %i.bh to i32
  %i.bj = mul nsw i64 %i.ba, %i.aw
  %i.bk = mul nsw i64 %i.bd, %i.as
  %i.bl = add nsw i64 %i.bj, 1073741824
  %i.bm = add i64 %i.bl, %i.bk
  %i.bn = lshr i64 %i.bm, 31
  %i.bo = trunc i64 %i.bn to i32
  store i32 %i.bo, ptr %i.aq, align 4, !tbaa !12
  store i32 %.07779, ptr %i.ay, align 4, !tbaa !12
  %i.bp = add nsw i32 %.07779, %i.bi              ; 2 uses
  %4 = icmp sgt i64 %indvars.iv85, 4
  br i1 %4, label %.lr.ph82, label %._crit_edge83, !llvm.loop !147
}

; Function Attrs: cold nounwind optsize uwtable
define internal i32 @ff_tx_dct_init_int32_c(ptr noundef %0, ptr nofree readnone captures(none) %1, i64 noundef %2, ptr nofree readnone captures(none) %3, i32 noundef %4, i32 noundef %5, ptr nofree noundef readonly captures(none) %6) #0 {
bb.a:
  %i.a = alloca float, align 4                    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.b = load float, ptr %6, align 4, !tbaa !36   ; 2 uses
  store float %i.b, ptr %i.a, align 4, !tbaa !36
  %.not = icmp eq i32 %5, 0                       ; 3 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = shl nsw i32 %4, 1
  %i.d = load i32, ptr %0, align 8, !tbaa !21
  %i.e = shl nsw i32 %i.d, 1
  store i32 %i.e, ptr %0, align 8, !tbaa !21
  %i.f = fmul nsz float %i.b, 5.000000e-01
  store float %i.f, ptr %i.a, align 4, !tbaa !36
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.043 = phi i32 [ %i.c, %bb.b ], [ %4, %bb.a ]  ; 9 uses
  %i.g = call i32 @ff_tx_init_subtx(ptr noundef %0, i32 noundef 8, i64 noundef %2, ptr noundef null, i32 noundef %.043, i32 noundef %5, ptr noundef nonnull %i.a) #16 ; 2 uses
  %.not46 = icmp eq i32 %i.g, 0
  br i1 %.not46, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.h = sdiv i32 %.043, 2                        ; 3 uses
  %i.i = mul nsw i32 %i.h, 3
  %i.j = sext i32 %i.i to i64
  %i.k = shl nsw i64 %i.j, 2
  %i.l = call noalias ptr @av_malloc(i64 noundef %i.k) #16 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.l, ptr %i.m, align 8, !tbaa !23
  %.not47 = icmp eq ptr %i.l, null
  br i1 %.not47, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = shl nsw i32 %.043, 1
  %i.o = sitofp nsz i32 %i.n to double
  %i.p = fdiv nsz double f0x400921FB54442D18, %i.o ; 3 uses
  %i.q = icmp sgt i32 %.043, 0
  br i1 %i.q, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.e
  %i.r = select i1 %.not, i32 2, i32 1
  %i.s = uitofp nneg i32 %i.r to double
  %wide.trip.count = zext nneg i32 %.043 to i64
  br label %bb.f

._crit_edge:                                      ; preds = %bb.f, %bb.e
  %i.t = icmp sgt i32 %.043, 1                    ; 2 uses
  br i1 %.not, label %.preheader, label %.preheader52

.preheader52:                                     ; preds = %._crit_edge
  br i1 %i.t, label %.lr.ph56.preheader, label %.loopexit

.lr.ph56.preheader:                               ; preds = %.preheader52
  %i.u = zext nneg i32 %.043 to i64
  %wide.trip.count64 = zext nneg i32 %i.h to i64
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.u
  br label %.lr.ph56

.preheader:                                       ; preds = %._crit_edge
  br i1 %i.t, label %.lr.ph58.preheader, label %.loopexit

.lr.ph58.preheader:                               ; preds = %.preheader
  %i.v = zext nneg i32 %.043 to i64
  %wide.trip.count69 = zext nneg i32 %i.h to i64
  %invariant.gep73 = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.v
  br label %.lr.ph58

bb.f:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 3 uses
  %i.w = trunc nuw nsw i64 %indvars.iv to i32
  %i.x = uitofp nsz nneg i32 %i.w to double
  %i.y = fmul nsz double %i.p, %i.x
  %i.z = call nsz double @llvm.cos.f64(double %i.y)
  %i.aa = fmul nsz double %i.z, %i.s
  %i.ab = fmul nsz double %i.aa, f0x41E0000000000000
  %i.ac = fptrunc nsz double %i.ab to float
  %i.ad = call i64 @llvm.llrint.i64.f32(float %i.ac)
  %i.ae = call i64 @llvm.smax.i64(i64 %i.ad, i64 -2147483648)
  %.0.i51 = call i64 @llvm.smin.i64(i64 %i.ae, i64 2147483647)
  %i.af = trunc nsw i64 %.0.i51 to i32
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.f, !llvm.loop !148

.lr.ph56:                                         ; preds = %.lr.ph56.preheader, %.lr.ph56
  %indvars.iv61 = phi i64 [ 0, %.lr.ph56.preheader ], [ %indvars.iv.next62, %.lr.ph56 ] ; 3 uses
  %indvars.iv61.tr = trunc i64 %indvars.iv61 to i32
  %i.ah = shl i32 %indvars.iv61.tr, 1
  %i.ai = or disjoint i32 %i.ah, 1
  %i.aj = uitofp nsz nneg i32 %i.ai to double
  %i.ak = fmul nnan nsz double %i.p, %i.aj
  %i.al = call nsz double @llvm.sin.f64(double %i.ak)
  %i.am = fdiv nsz double 5.000000e-01, %i.al
  %i.an = fmul nsz double %i.am, f0x41E0000000000000
  %i.ao = fptrunc nsz double %i.an to float
  %i.ap = call i64 @llvm.llrint.i64.f32(float %i.ao)
  %i.aq = call i64 @llvm.smax.i64(i64 %i.ap, i64 -2147483648)
  %.0.i49 = call i64 @llvm.smin.i64(i64 %i.aq, i64 2147483647)
  %i.ar = trunc nsw i64 %.0.i49 to i32
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv61
  store i32 %i.ar, ptr %gep, align 4, !tbaa !12
  %indvars.iv.next62 = add nuw nsw i64 %indvars.iv61, 1 ; 2 uses
  %exitcond65.not = icmp eq i64 %indvars.iv.next62, %wide.trip.count64
  br i1 %exitcond65.not, label %.loopexit, label %.lr.ph56, !llvm.loop !149

.lr.ph58:                                         ; preds = %.lr.ph58.preheader, %.lr.ph58
  %indvars.iv66 = phi i64 [ 0, %.lr.ph58.preheader ], [ %indvars.iv.next67, %.lr.ph58 ] ; 3 uses
  %indvars.iv66.tr = trunc nuw nsw i64 %indvars.iv66 to i32
  %i.as = shl nuw nsw i32 %indvars.iv66.tr, 1
  %i.at = xor i32 %i.as, -1
  %i.au = add nsw i32 %.043, %i.at
  %i.av = sitofp nsz i32 %i.au to double
  %i.aw = fmul nsz double %i.p, %i.av
  %i.ax = call nsz double @llvm.cos.f64(double %i.aw)
  %i.ay = fmul nsz double %i.ax, f0x41E0000000000000
  %i.az = fptrunc nsz double %i.ay to float
  %i.ba = call i64 @llvm.llrint.i64.f32(float %i.az)
  %i.bb = call i64 @llvm.smax.i64(i64 %i.ba, i64 -2147483648)
  %.0.i = call i64 @llvm.smin.i64(i64 %i.bb, i64 2147483647)
  %i.bc = trunc nsw i64 %.0.i to i32
  %gep74 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep73, i64 %indvars.iv66
  store i32 %i.bc, ptr %gep74, align 4, !tbaa !12
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, 1 ; 2 uses
  %exitcond70.not = icmp eq i64 %indvars.iv.next67, %wide.trip.count69
  br i1 %exitcond70.not, label %.loopexit, label %.lr.ph58, !llvm.loop !150

.loopexit:                                        ; preds = %.lr.ph56, %.lr.ph58, %.preheader52, %.preheader, %bb.d, %bb.c
  %.042 = phi i32 [ %i.g, %bb.c ], [ -12, %bb.d ], [ 0, %.preheader ], [ 0, %.preheader52 ], [ 0, %.lr.ph58 ], [ 0, %.lr.ph56 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret i32 %.042
}

; Function Attrs: nounwind uwtable
define internal void @ff_tx_dctIII_int32_c(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, i64 %3) #3 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !21     ; 4 uses
  %i.b = ashr i32 %i.a, 1                         ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !23   ; 3 uses
  %i.e = sext i32 %i.a to i64                     ; 4 uses
  %i.f = getelementptr [4 x i8], ptr %2, i64 %i.e ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 -4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !12
  %i.i = sext i32 %i.h to i64
  %i.j = shl nsw i64 %i.i, 1
  %i.k = add nsw i64 %i.j, 1073741824
  %i.l = lshr i64 %i.k, 31
  %i.m = trunc i64 %i.l to i32
  store i32 %i.m, ptr %i.f, align 4, !tbaa !12
  %i.n = icmp sgt i32 %i.a, 3
  br i1 %i.n, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !10
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !29
  tail call void %i.p(ptr noundef %i.r, ptr noundef %1, ptr noundef nonnull %2, i64 noundef 4) #16
  %i.s = icmp sgt i32 %i.b, 0
  br i1 %i.s, label %.lr.ph76.preheader, label %._crit_edge77

.lr.ph76.preheader:                               ; preds = %._crit_edge
  %wide.trip.count = zext nneg i32 %i.b to i64
  %invariant.gep = getelementptr [4 x i8], ptr %i.d, i64 %i.e
  br label %.lr.ph76

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %i.e, %bb.a ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -2  ; 4 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next ; 4 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !12
  %i.v = getelementptr i8, ptr %i.t, i64 -4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !12
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 4 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !12
  %i.z = sub nsw i32 %i.w, %i.y
  %i.aa = sext i32 %i.u to i64                    ; 2 uses
  %i.ab = sub nsw i64 %i.e, %indvars.iv.next
  %i.ac = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.ab ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !12
  %i.ae = sext i32 %i.ad to i64
  %i.af = mul nsw i64 %i.ae, %i.aa
  %i.ag = sext i32 %i.z to i64                    ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !12
  %i.aj = sext i32 %i.ai to i64
  %i.ak = mul nsw i64 %i.aj, %i.ag
  %i.al = add nsw i64 %i.af, 1073741824
  %i.am = sub nsw i64 %i.al, %i.ak
  %i.an = lshr i64 %i.am, 31
  %i.ao = trunc i64 %i.an to i32
  store i32 %i.ao, ptr %i.x, align 4, !tbaa !12
  %i.ap = load i32, ptr %i.ac, align 4, !tbaa !12
  %i.aq = sext i32 %i.ap to i64
  %i.ar = mul nsw i64 %i.aq, %i.ag
  %i.as = load i32, ptr %i.ah, align 4, !tbaa !12
  %i.at = sext i32 %i.as to i64
  %i.au = mul nsw i64 %i.at, %i.aa
  %i.av = add nsw i64 %i.ar, 1073741824
  %i.aw = add i64 %i.av, %i.au
  %i.ax = lshr i64 %i.aw, 31
  %i.ay = trunc i64 %i.ax to i32
  store i32 %i.ay, ptr %i.t, align 4, !tbaa !12
  %i.az = icmp samesign ugt i64 %indvars.iv, 5
  br i1 %i.az, label %.lr.ph, label %._crit_edge, !llvm.loop !151

._crit_edge77:                                    ; preds = %.lr.ph76, %._crit_edge
  ret void

.lr.ph76:                                         ; preds = %.lr.ph76.preheader, %.lr.ph76
  %indvars.iv79 = phi i64 [ 0, %.lr.ph76.preheader ], [ %indvars.iv.next80, %.lr.ph76 ] ; 4 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv79 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !12 ; 2 uses
  %i.bc = trunc i64 %indvars.iv79 to i32
  %i.bd = xor i32 %i.bc, -1
  %i.be = add i32 %i.a, %i.bd
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr inbounds [4 x i8], ptr %1, i64 %i.bf ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !12 ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv79
  %i.bi = load i32, ptr %gep, align 4, !tbaa !12
  %i.bj = add nsw i32 %i.bh, %i.bb                ; 2 uses
  %i.bk = sub nsw i32 %i.bb, %i.bh
  %i.bl = sext i32 %i.bk to i64
  %i.bm = sext i32 %i.bi to i64
  %i.bn = mul nsw i64 %i.bl, %i.bm
  %i.bo = add nsw i64 %i.bn, 1073741824
  %i.bp = lshr i64 %i.bo, 31
  %i.bq = trunc i64 %i.bp to i32                  ; 2 uses
  %i.br = add i32 %i.bj, %i.bq
  store i32 %i.br, ptr %i.ba, align 4, !tbaa !12
  %i.bs = sub i32 %i.bj, %i.bq
  store i32 %i.bs, ptr %i.bg, align 4, !tbaa !12
  %indvars.iv.next80 = add nuw nsw i64 %indvars.iv79, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next80, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge77, label %.lr.ph76, !llvm.loop !152
}

; Function Attrs: nounwind uwtable
define internal void @ff_tx_dctI_int32_c(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) #3 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !21     ; 2 uses
  %i.b = add i32 %i.a, -1                         ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !28   ; 8 uses
  %i.e = lshr i64 %3, 2                           ; 4 uses
  %i.f = icmp sgt i32 %i.a, 1
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.g = shl nuw nsw i32 %i.b, 1
  %i.h = zext nneg i32 %i.g to i64                ; 3 uses
  %wide.trip.count = zext nneg i32 %i.b to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.i = icmp eq i32 %i.b, 1
  br i1 %i.i, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.b

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod27 = trunc i32 %i.b to i1
  tail call void @llvm.assume(i1 %lcmp.mod27)
  %i.j = mul nuw nsw i64 %i.e, %indvars.iv.epil.init
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.j
  %i.l = load i32, ptr %i.k, align 4, !tbaa !12   ; 2 uses
  %i.m = sub nuw nsw i64 %i.h, %indvars.iv.epil.init
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.m
  store i32 %i.l, ptr %i.n, align 4, !tbaa !12
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.epil.init
  store i32 %i.l, ptr %i.o, align 4, !tbaa !12
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  %i.p = sext i32 %i.b to i64                     ; 2 uses
  %i.q = mul nsw i64 %i.e, %i.p
  %i.r = getelementptr inbounds [4 x i8], ptr %2, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !12
  %i.t = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.p
  store i32 %i.s, ptr %i.t, align 4, !tbaa !12
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !10
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !29
  tail call void %i.v(ptr noundef %i.x, ptr noundef %1, ptr noundef %i.d, i64 noundef 4) #16
  ret void

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.b ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.y = mul nuw nsw i64 %i.e, %indvars.iv
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !12  ; 2 uses
  %i.ab = sub nuw nsw i64 %i.h, %indvars.iv
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ab
  store i32 %i.aa, ptr %i.ac, align 4, !tbaa !12
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv
  store i32 %i.aa, ptr %i.ad, align 4, !tbaa !12
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %i.ae = mul nuw nsw i64 %i.e, %indvars.iv.next
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !12 ; 2 uses
  %i.ah = sub nuw nsw i64 %i.h, %indvars.iv.next
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ah
  store i32 %i.ag, ptr %i.ai, align 4, !tbaa !12
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next
  store i32 %i.ag, ptr %i.aj, align 4, !tbaa !12
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !153
}

; Function Attrs: cold nounwind optsize uwtable
define internal i32 @ff_tx_dcstI_init_int32_c(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr nofree readnone captures(none) %3, i32 noundef %4, i32 noundef %5, ptr nofree noundef readonly captures(none) %6) #0 {
bb.a:
  %i.a = alloca float, align 4                    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.b = load float, ptr %6, align 4, !tbaa !36   ; 2 uses
  store float %i.b, ptr %i.a, align 4, !tbaa !36
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = shl nsw i32 %4, 1
  %i.d = load i32, ptr %0, align 8, !tbaa !21
  %i.e = shl nsw i32 %i.d, 1
  store i32 %i.e, ptr %0, align 8, !tbaa !21
  %i.f = fmul nsz float %i.b, 5.000000e-01
  store float %i.f, ptr %i.a, align 4, !tbaa !36
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.014 = phi i32 [ %i.c, %bb.b ], [ %4, %bb.a ]  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i32, ptr %i.g, align 8, !tbaa !156  ; 2 uses
  %i.i = icmp eq i32 %i.h, 14
  %i.j = select i1 %i.i, i64 8, i64 16
  %i.k = or i64 %i.j, %2
  %i.l = add nsw i32 %.014, -1
  %i.m = icmp eq i32 %i.h, 17
  %i.n = select i1 %i.m, i32 2, i32 0
  %i.o = add nsw i32 %i.l, %i.n
  %i.p = shl nsw i32 %i.o, 1
  %i.q = call i32 @ff_tx_init_subtx(ptr noundef %0, i32 noundef 8, i64 noundef %i.k, ptr noundef null, i32 noundef %i.p, i32 noundef 0, ptr noundef nonnull %i.a) #16 ; 2 uses
  %.not16 = icmp eq i32 %i.q, 0
  br i1 %.not16, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = shl i32 %.014, 1
  %i.s = add i32 %i.r, 2
  %i.t = sext i32 %i.s to i64
  %i.u = shl nsw i64 %i.t, 2
  %i.v = call noalias ptr @av_mallocz(i64 noundef %i.u) #16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.v, ptr %i.w, align 8, !tbaa !28
  %.not17 = icmp eq ptr %i.v, null
  %. = select i1 %.not17, i32 -12, i32 0
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i32 [ %., %bb.d ], [ %i.q, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal void @ff_tx_dstI_int32_c(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) #3 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !21     ; 2 uses
  %i.b = add i32 %i.a, 1                          ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !28   ; 9 uses
end_hunk_0
